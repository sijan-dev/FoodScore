import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart'
    hide Barcode;
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../app/tokens.dart';
import '../../models/product.dart';
import '../../services/barcode_service.dart';
import '../shared/error_state_widget.dart';
import 'scan_results_screen.dart';

class ScannerScreen extends ConsumerStatefulWidget {
  const ScannerScreen({super.key});

  @override
  ConsumerState<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends ConsumerState<ScannerScreen>
    with WidgetsBindingObserver {
  final MobileScannerController _controller = MobileScannerController();
  final BarcodeService _barcodeService = BarcodeService();
  bool _isProcessing = false;
  String _statusText = 'Searching for barcode...';
  bool _hasCameraError = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _hasCameraError) {
      setState(() => _hasCameraError = false);
    }
  }

  Future<void> _handleBarcode(String code) async {
    if (_isProcessing) return;
    setState(() {
      _isProcessing = true;
      _statusText = 'Analyzing product...';
    });

    try {
      final product = await _barcodeService.fetchProductByBarcode(code);
      if (!mounted) return;
      final results = product == null ? <Product>[] : <Product>[product];
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => ScanResultsScreen(barcode: code, results: results),
        ),
      );
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _statusText = 'Scan failed. Try again.';
        _isProcessing = false;
      });
    }
  }

  Future<void> _pickFromGallery() async {
    final status = await Permission.photos.request();
    if (!status.isGranted) return;

    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked == null) return;

    setState(() {
      _statusText = 'Reading barcode...';
      _isProcessing = true;
    });

    try {
      final file = File(picked.path);
      final inputImage = InputImage.fromFile(file);
      final barcodeScanner = BarcodeScanner();
      final barcodes = await barcodeScanner.processImage(inputImage);
      await barcodeScanner.close();

      if (barcodes.isEmpty) {
        if (!mounted) return;
        setState(() {
          _statusText = 'No barcode found in image.';
          _isProcessing = false;
        });
        return;
      }

      final code = barcodes.first.rawValue;
      if (code == null) {
        if (!mounted) return;
        setState(() {
          _statusText = 'No barcode found in image.';
          _isProcessing = false;
        });
        return;
      }

      await _handleBarcode(code);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _statusText = 'Failed to read image.';
        _isProcessing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scannerBg,
      body: Stack(
        children: [
          if (_hasCameraError)
            ErrorStateWidget(
              message: 'Unable to access the camera.',
              retryLabel: 'Open Settings',
              onRetry: () => openAppSettings(),
            )
          else
            MobileScanner(
              controller: _controller,
              onDetect: (capture) {
                final barcode = capture.barcodes.firstOrNull?.rawValue;
                if (barcode != null) {
                  _handleBarcode(barcode);
                }
              },
              errorBuilder: (context, error) {
                debugPrint('MobileScanner error: $error');
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) setState(() => _hasCameraError = true);
                });
                return const SizedBox.shrink();
              },
            ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.scannerOverlayTop,
                  AppColors.scannerOverlayMid,
                  AppColors.scannerOverlayBottom,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _CircleButton(
                        icon: Icons.close,
                        semanticLabel: 'Close scanner',
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      _CircleButton(
                        icon: Icons.flash_on,
                        semanticLabel: 'Toggle flash',
                        onTap: () {
                          _controller.toggleTorch();
                        },
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                _ScannerFrame(isProcessing: _isProcessing),
                const Spacer(),
                _StatusPill(text: _statusText),
                const SizedBox(height: 12),
                Text(
                  'Align the barcode within the frame',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: AppColors.scannerText),
                ),
                const SizedBox(height: 24),
                _GalleryButton(onTap: _pickFromGallery),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({
    required this.icon,
    required this.onTap,
    this.semanticLabel,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final label = semanticLabel ?? _defaultLabel(icon);
    return Semantics(
      button: true,
      label: label,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.scannerButtonBg,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: AppColors.scannerButtonBorder),
          ),
          child: Icon(icon, color: AppColors.scannerCorner),
        ),
      ),
    );
  }

  String _defaultLabel(IconData icon) {
    if (icon == Icons.close) {
      return 'Close scanner';
    }
    if (icon == Icons.flash_on || icon == Icons.flash_off) {
      return 'Toggle flash';
    }
    return 'Button';
  }
}

class _ScannerFrame extends StatelessWidget {
  const _ScannerFrame({required this.isProcessing});

  final bool isProcessing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 240,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: AppColors.scannerFrameBorder,
                  width: 2,
                ),
              ),
            ),
          ),
          const _Corner(top: 0, left: 0),
          const _Corner(top: 0, right: 0),
          const _Corner(bottom: 0, left: 0),
          const _Corner(bottom: 0, right: 0),
          if (isProcessing)
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 2,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: context.primary,
                  boxShadow: [
                    BoxShadow(
                      color: context.primary.withValues(alpha: 0.7),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _Corner extends StatelessWidget {
  const _Corner({this.top, this.left, this.right, this.bottom});

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.scannerCorner,
              width: top != null ? 3 : 0,
            ),
            left: BorderSide(
              color: AppColors.scannerCorner,
              width: left != null ? 3 : 0,
            ),
            right: BorderSide(
              color: AppColors.scannerCorner,
              width: right != null ? 3 : 0,
            ),
            bottom: BorderSide(
              color: AppColors.scannerCorner,
              width: bottom != null ? 3 : 0,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: top != null && left != null
                ? const Radius.circular(20)
                : Radius.zero,
            topRight: top != null && right != null
                ? const Radius.circular(20)
                : Radius.zero,
            bottomLeft: bottom != null && left != null
                ? const Radius.circular(20)
                : Radius.zero,
            bottomRight: bottom != null && right != null
                ? const Radius.circular(20)
                : Radius.zero,
          ),
        ),
      ),
    );
  }
}

class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.scannerPillBg,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.scannerPillBorder),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: AppColors.scannerCorner,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _GalleryButton extends StatelessWidget {
  const _GalleryButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: Icon(Icons.photo_library_outlined, color: AppColors.scannerCorner),
      label: const Text('Pick from Gallery'),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.scannerCorner,
        side: BorderSide(color: AppColors.scannerGalleryBorder),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
    );
  }
}

extension _BarcodeList on List<Barcode> {
  Barcode? get firstOrNull => isEmpty ? null : first;
}
