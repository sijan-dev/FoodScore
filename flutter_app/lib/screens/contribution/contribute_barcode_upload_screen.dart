import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../app/tokens.dart';

class ContributeBarcodeUploadScreen extends StatefulWidget {
  const ContributeBarcodeUploadScreen({super.key});

  @override
  State<ContributeBarcodeUploadScreen> createState() =>
      _ContributeBarcodeUploadScreenState();
}

class _ContributeBarcodeUploadScreenState
    extends State<ContributeBarcodeUploadScreen> {
  final ImagePicker _picker = ImagePicker();
  final Map<String, XFile?> _images = {
    'front': null,
    'barcode': null,
    'ingredients': null,
  };

  Future<void> _pickImage(String key) async {
    final file = await _picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1920,
      maxHeight: 1920,
      imageQuality: 85,
    );
    if (file != null) {
      setState(() => _images[key] = file);
    }
  }

  bool get _hasAnyImage => _images.values.any((f) => f != null);
  int get _pickedCount => _images.values.where((f) => f != null).length;

  Future<void> _upload() async {
    if (!_hasAnyImage) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Uploading $_pickedCount image${_pickedCount == 1 ? "" : "s"}...'),
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Upload complete! Thanks for contributing.')),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
              child: Row(
                children: [
                  _IconButton(
                    icon: Icons.close,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Upload Barcode Photos',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'Step 2 of 3',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: context.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 6),
                  LinearProgressIndicator(
                    value: 0.66,
                    minHeight: 6,
                    borderRadius: BorderRadius.circular(99),
                    backgroundColor: context.surfaceContainer,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      context.primaryContainer,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Add clear photos of the barcode and packaging.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: context.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                children: [
                  _UploadCard(
                    title: 'Front of Package',
                    subtitle: 'Show the full product name',
                    icon: Icons.photo_camera_front,
                    image: _images['front'],
                    onPick: () => _pickImage('front'),
                  ),
                  const SizedBox(height: 12),
                  _UploadCard(
                    title: 'Barcode Closeup',
                    subtitle: 'Keep barcode in focus',
                    icon: Icons.qr_code,
                    image: _images['barcode'],
                    onPick: () => _pickImage('barcode'),
                  ),
                  const SizedBox(height: 12),
                  _UploadCard(
                    title: 'Ingredients Label',
                    subtitle: 'Capture nutrition details',
                    icon: Icons.document_scanner,
                    image: _images['ingredients'],
                    onPick: () => _pickImage('ingredients'),
                  ),
                  const SizedBox(height: 16),
                  _InfoCard(
                    title: 'Why we need this',
                    message:
                        'Your photos help improve our accuracy and product database.',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              decoration: BoxDecoration(
                color: context.surfaceContainerLowest,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow.withValues(alpha: 0.08),
                    blurRadius: 12,
                    offset: const Offset(0, -6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      onPressed: _hasAnyImage ? _upload : null,
                      child: Text(
                        _hasAnyImage ? 'Upload ($_pickedCount)' : 'Upload',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _IconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: context.surfaceContainer,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(icon, color: context.onSurface),
      ),
    );
  }
}

class _UploadCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final XFile? image;
  final VoidCallback onPick;

  const _UploadCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.image,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = image != null;

    return GestureDetector(
      onTap: onPick,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutCubic,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: hasImage
              ? context.primaryContainer.withValues(alpha: 0.08)
              : context.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: hasImage ? context.primary : context.outlineVariant,
            width: hasImage ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: hasImage ? 56 : 48,
              height: hasImage ? 56 : 48,
              decoration: BoxDecoration(
                color: hasImage
                    ? Colors.transparent
                    : context.primaryContainer.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: hasImage
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.file(
                        File(image!.path),
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Icon(icon, color: context.primary),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: hasImage ? context.primary : context.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    hasImage ? 'Image captured' : subtitle,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: hasImage
                          ? context.primary
                          : context.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: hasImage
                  ? Icon(Icons.check_circle, color: context.primary, key: ValueKey('check'))
                  : Icon(Icons.upload_file, color: context.onSurfaceVariant, key: ValueKey('upload')),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String message;

  const _InfoCard({required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.primaryContainer.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: context.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.info_outline, color: context.onPrimary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: context.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
