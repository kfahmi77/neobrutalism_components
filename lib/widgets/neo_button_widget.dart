import 'package:flutter/material.dart';

import '../theme/neo_colors.dart';
import '../theme/neo_themes.dart';

class NeoButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final NeoThemeInterface theme;
  final bool isLoading;

  const NeoButtonWidget({
    super.key,
    required this.onPressed,
    required this.child,
    this.color = NeoColors.primary,
    required this.theme,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: NeoColors.primary,
            width: theme.borderWidth,
          ),
          borderRadius: theme.borderRadius,
          boxShadow: [
            BoxShadow(
              color: theme.shadowColor,
              offset: Offset(theme.shadowOffset, theme.shadowOffset),
              blurRadius: 0,
            ),
          ],
        ),
        child: isLoading
            ? const CircularProgressIndicator(color: NeoColors.secondary)
            : child,
      ),
    );
  }
}
