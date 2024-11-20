import 'package:flutter/material.dart';

import '../theme/neo_colors.dart';
import '../theme/neo_themes.dart';

class NeoInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final NeoThemeInterface theme;
  final bool obscureText;
  final String? Function(String?)? validator;

  const NeoInputWidget({
    super.key,
    required this.controller,
    this.hintText,
    required this.theme,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: NeoColors.secondary,
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
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
}