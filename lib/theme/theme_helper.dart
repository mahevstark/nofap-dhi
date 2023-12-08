import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onErrorContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
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
            color: appTheme.gray100,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray30001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray60002,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 28.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 11.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 22.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF68008D),
    primaryContainer: Color(0XFFFF5083),
    secondaryContainer: Color(0XFF221F20),

    // Error colors
    errorContainer: Color(0XFFFF0000),
    onError: Color(0X4C69008E),
    onErrorContainer: Color(0XCCFFFFFF),

    // On colors(text colors)
    onPrimary: Color(0XFFFFC107),
    onPrimaryContainer: Color(0X14121212),
    onSecondaryContainer: Color(0XFFFDA690),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF0A0F0D);
  Color get black90001 => Color(0XFF080807);
  Color get black90002 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray900 => Color(0XFF333333);
  Color get blueGray90001 => Color(0XFF343433);
  Color get blueGray90002 => Color(0XFF313131);
  Color get blueGray90003 => Color(0XFF263238);

  // DeepOrange
  Color get deepOrangeA400 => Color(0XFFFF2104);

  // DeepPurple
  Color get deepPurple50 => Color(0XFFEEEEFF);

  // Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray10006 => Color(0X06F7F7F7);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray20001 => Color(0XFFF0F0F0);
  Color get gray20002 => Color(0XFFEBEBEB);
  Color get gray300 => Color(0XFFE1E4E8);
  Color get gray30001 => Color(0XFFDCDCDC);
  Color get gray30002 => Color(0XFFDBDBDB);
  Color get gray30003 => Color(0XFFDEDEDE);
  Color get gray400 => Color(0XFFC2C2C2);
  Color get gray500 => Color(0XFF909590);
  Color get gray50001 => Color(0XFFA7A7A7);
  Color get gray50002 => Color(0XFFA7A5A6);
  Color get gray50003 => Color(0XFF999999);
  Color get gray600 => Color(0XFF858585);
  Color get gray60001 => Color(0XFF7F7F7F);
  Color get gray60002 => Color(0XFF6F6F6F);
  Color get gray60003 => Color(0XFF7D7D7D);
  Color get gray700 => Color(0XFF666666);
  Color get gray70001 => Color(0XFF555555);
  Color get gray900 => Color(0XFF232528);
  Color get gray90001 => Color(0XFF252323);
  Color get gray90026 => Color(0X26151515);
  Color get gray9002601 => Color(0X26131313);

  // Graye
  Color get gray9001e => Color(0X1E141414);

  // LightBlue
  Color get lightBlue800 => Color(0XFF0078BE);
  Color get lightBlueA200 => Color(0XFF38B6FF);
  Color get lightBlueA700 => Color(0XFF0593FC);

  // PinkAf
  Color get pink900Af => Color(0XAF801161);

  // Red
  Color get red500 => Color(0XFFFF3D23);
  Color get red900 => Color(0XFFB10B0B);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
