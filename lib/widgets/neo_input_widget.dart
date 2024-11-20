import 'package:flutter/material.dart';

import '../theme/neo_colors.dart';
import '../theme/neo_themes.dart';

class NeoInputWidget extends StatelessWidget {
  final NeoThemeInterface theme;
  final TextFormField textFormField;

  const NeoInputWidget({
    super.key,
    required this.theme,
    required this.textFormField,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: NeoColors.secondary,
        border: Border.all(
          color: theme.borderColor,
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
      child: textFormField
    );
  }
}
