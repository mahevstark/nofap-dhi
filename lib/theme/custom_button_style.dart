import 'dart:ui';
import 'package:nofapp/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );
  static ButtonStyle get fillGrayTL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              10.h,
            ),
            topRight: Radius.circular(
              10.h,
            ),
            bottomRight: Radius.circular(
              10.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillPrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              10.h,
            ),
            topRight: Radius.circular(
              10.h,
            ),
            bottomLeft: Radius.circular(
              10.h,
            ),
          ),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineGray => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
        shadowColor: appTheme.gray9002601,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
