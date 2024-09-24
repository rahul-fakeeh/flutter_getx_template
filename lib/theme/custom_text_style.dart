import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get archivo {
    return copyWith(
      fontFamily: 'Archivo',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static TextStyle get bodyLargeBluegray200 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static TextStyle get bodyLargeOnErrorContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get bodyMediumPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get bodySmallBluegray800 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static TextStyle get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get bodySmallPrimary12 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
// Headline text style
  static TextStyle get headlineSmallBold =>
      theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
// Title text style
  static TextStyle get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
}
