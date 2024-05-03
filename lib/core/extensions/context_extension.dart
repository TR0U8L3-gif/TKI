import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ColorScheme get theme => Theme.of(this).colorScheme;
  Size get sizeMediaQuery => MediaQuery.of(this).size;
  double get width => sizeMediaQuery.width;
  double get height => sizeMediaQuery.height;
}
