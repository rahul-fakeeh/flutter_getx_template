import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onErrorContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray300,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray500,
          fontSize: 18.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 36.fSize,
          fontFamily: 'Archivo',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 32.fSize,
          fontFamily: 'Archivo',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 24.fSize,
          fontFamily: 'Archivo',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Archivo',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Archivo',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 14.fSize,
          fontFamily: 'Archivo',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF636AE8),
    primaryContainer: Color(0X16171A1F),
    secondaryContainer: Color(0XFF000000),
    errorContainer: Color(0XFF373FFE),
    onError: Color(0XFF5686FF),
    onErrorContainer: Color(0XFFFFFFFF),
    onPrimary: Color(0X1E120F28),
    onPrimaryContainer: Color(0XFF1DD75B),
    onSecondaryContainer: Color(0XFF262A33),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Blue
  Color get blueA100 => Color(0XFF92B1FF);
// BlueGray
  Color get blueGray200 => Color(0XFFBCC1CA);
  Color get blueGray800 => Color(0XFF424955);
// DeepOrange
  Color get deepOrange200 => Color(0XFFEFA98D);
// DeepPurple
  Color get deepPurple500 => Color(0XFF5B27D5);
// Gray
  Color get gray100 => Color(0XFFF2F2FD);
  Color get gray300 => Color(0XFFDEE1E6);
  Color get gray50 => Color(0XFFFAFAFB);
  Color get gray500 => Color(0XFF9095A0);
  Color get gray700 => Color(0XFF565E6C);
// Indigo
  Color get indigo100 => Color(0XFFCED0F8);
  Color get indigoA100 => Color(0XFF878CED);
// LightBlue
  Color get lightBlue900 => Color(0XFF125D95);
}
