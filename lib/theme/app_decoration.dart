import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray30003,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnError1 => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(0.5),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray700 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray90026 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray9002601 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9002601,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayE => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightBlue => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.lightBlue800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        70.h,
      );
  static BorderRadius get circleBorder80 => BorderRadius.circular(
        80.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.only(
        topLeft: Radius.circular(10.h),
        topRight: Radius.circular(10.h),
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL101 => BorderRadius.only(
        topLeft: Radius.circular(10.h),
        topRight: Radius.circular(10.h),
        bottomLeft: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    