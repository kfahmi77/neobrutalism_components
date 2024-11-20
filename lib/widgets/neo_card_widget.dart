import 'package:flutter/widgets.dart';

import '../theme/neo_colors.dart';
import '../theme/neo_themes.dart';

class NeoCardWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final NeoThemeInterface theme;
  final EdgeInsets padding;

  const NeoCardWidget({
    super.key,
    required this.child,
    this.color = NeoColors.secondary,
    required this.theme,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
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
      child: child,
    );
  }
}