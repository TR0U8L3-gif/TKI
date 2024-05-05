import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextSingleLine extends Text{
  const TextSingleLine(
    super.data, {
    super.key,
    super.style,
    super.textAlign,
    super.textDirection,
    super.locale,
    TextOverflow? overflow,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
  }) : super(
    maxLines: 1,
    softWrap: false,
    overflow: overflow ?? TextOverflow.ellipsis,
  );
}

class TextSingleLineSized extends AutoSizeText{
  const TextSingleLineSized(
    super.data, {
    super.key,
    super.style,
    super.textAlign,
    super.textDirection,
    super.locale,
    TextOverflow? overflow,
    super.semanticsLabel,
    super.stepGranularity,
    super.wrapWords,
    super.group,
    super.minFontSize,
    super.maxFontSize,
    super.textScaleFactor,
    super.strutStyle,
    super.overflowReplacement,
    super.textKey,
  }) : super(
    maxLines: 1,
    softWrap: false,
  );
}