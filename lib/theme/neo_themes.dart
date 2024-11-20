

import 'package:flutter/rendering.dart';

import 'neo_colors.dart';

abstract class NeoThemeInterface {
  double get shadowOffset;
  double get borderWidth;
  BorderRadius get borderRadius;
  Color get shadowColor;
}

class NeoTheme implements NeoThemeInterface {
  @override
  final double shadowOffset;
  @override
  final double borderWidth;
  @override
  final BorderRadius borderRadius;
  @override
  final Color shadowColor;

  const NeoTheme({
    this.shadowOffset = 4.0,
    this.borderWidth = 2.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(4)),
    this.shadowColor = NeoColors.shadowDark,
  });
}