import 'package:common_widgets/src/extensions/buildcontext/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  const AppText.labelSmall(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'labelSmall';

  const AppText.labelMedium(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'labelMedium';

  const AppText.labelLarge(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'labelLarge';

  const AppText.bodySmall(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'bodySmall';

  const AppText.bodyMedium(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'bodyMedium';
  const AppText.bodyLarge(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'bodyLarge';

  const AppText.titleSmall(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'titleSmall';

  const AppText.titleMedium(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'titleMedium';

  const AppText.titleLarge(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontWeight,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'titleLarge';

  const AppText.headlineSmall(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'headlineSmall';
  const AppText.headlineMedium(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'headlineMedium';

  const AppText.headlineLarge(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'headlineLarge';

  const AppText.displaySmall(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'displaySmall';

  const AppText.displayMedium(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'displayMedium';

  const AppText.displayLarge(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.isUnderline = false,
  }) : level = 'displayLarge';

  final String data;
  final String level;
  final Color? color;
  final double? fontSize;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final bool isUnderline;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = context.textTheme;
    final TextStyle? style = () {
      switch (level) {
        case 'labelSmall':
          return textTheme.labelSmall;
        case 'labelMedium':
          return textTheme.labelMedium;
        case 'labelLarge':
          return textTheme.labelLarge;
        case 'bodySmall':
          return textTheme.bodySmall;
        case 'bodyMedium':
          return textTheme.bodyMedium;
        case 'bodyLarge':
          return textTheme.bodyLarge;
        case 'titleSmall':
          return textTheme.titleSmall;
        case 'titleMedium':
          return textTheme.titleMedium;
        case 'titleLarge':
          return textTheme.titleLarge;
        case 'headlineSmall':
          return textTheme.headlineSmall;
        case 'headlineMedium':
          return textTheme.headlineMedium;
        case 'headlineLarge':
          return textTheme.headlineLarge;
        case 'displaySmall':
          return textTheme.displaySmall;
        case 'displayMedium':
          return GoogleFonts.pacifico(
            textStyle: textTheme.displayMedium,
          );
        case 'displayLarge':
          return textTheme.displayLarge;
      }
    }();
    return Text(
      data.trim(),
      textAlign: textAlign,
      style: style?.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
      maxLines: maxLines,
    );
  }
}
