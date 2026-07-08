import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.width,
    required this.height,
    this.borderRadius,
    this.fit = BoxFit.cover,
  });

  final String imageUrl;
  final String productName;
  final double width;
  final double height;
  final double? borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 12),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => _Fallback(
          productName: productName,
          width: width,
          height: height,
          borderRadius: borderRadius ?? 12,
        ),
      ),
    );
  }
}

class _Fallback extends StatelessWidget {
  const _Fallback({
    required this.productName,
    required this.width,
    required this.height,
    required this.borderRadius,
  });

  final String productName;
  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final letter = (productName.isNotEmpty ? productName[0] : '?')
        .toUpperCase();
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.pink,
      Colors.indigo,
      Colors.amber,
    ];
    final color = colors[letter.codeUnitAt(0) % colors.length];

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Text(
          letter,
          style: TextStyle(
            fontSize: width * 0.4,
            fontWeight: FontWeight.w700,
            color: color.withValues(alpha: 0.8),
          ),
        ),
      ),
    );
  }
}
