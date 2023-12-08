import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyLargeBlack90002_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeBluegray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90002,
      );
  static get bodyLargeBluegray90002Light => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90002,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeBluegray90002_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90002,
      );
  static get bodyLargeBluegray90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray100 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray100,
      );
  static get bodyLargeLatoBluegray900 =>
      theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeLatoGray500 => theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeMontserratBlack90002 =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: appTheme.black90002,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeOnPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeOnPrimaryContainer_2 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary18 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeRed900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red900,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMediumBlack90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumBluegray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90002,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray9000215 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 15.fSize,
      );
  static get bodyMediumBrother1816 => theme.textTheme.bodyMedium!.brother1816;
  static get bodyMediumGray50003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50003,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallLatoBlack90002 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelLargeGray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray100,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelMediumOnErrorContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLarge20_1 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeBlack90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray900Medium =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBluegray900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeGray100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray100,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryContainerRegular =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimary20 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
      );
  static get titleLargePrimary20_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 23.fSize,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRed900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 20.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBlack90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumBluegray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumDeeporangeA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrangeA400,
        fontSize: 18.fSize,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumMontserratBlack900 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallLatoGray700 => theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get brother1816 {
    return copyWith(
      fontFamily: 'Brother 1816',
    );
  }
}
