import 'package:flutter/material.dart';

import '../../app/tokens.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.semanticLabel,
    this.size = 44,
    this.backgroundColor,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String semanticLabel;
  final double size;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: semanticLabel,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(size / 2),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: backgroundColor ?? context.surfaceContainer,
            borderRadius: BorderRadius.circular(size * 0.35),
          ),
          child: Icon(icon, color: context.onSurface, size: size * 0.55),
        ),
      ),
    );
  }
}
