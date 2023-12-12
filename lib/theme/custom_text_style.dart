import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack90016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray40002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 16.fSize,
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyLargePrimaryContainer16 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyMediumBluegray40002_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyMediumBluegray400_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyMediumBluegray90075 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90075,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray40003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40003,
      );
  static get bodyMediumGray40004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40004,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray80002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80002,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumInterGray600 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600.withOpacity(0.56),
        fontSize: 13.fSize,
      );
  static get bodyMediumInterGray600_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRed300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red300,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall11_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallAmber700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.amber700,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlue300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue300,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 11.fSize,
      );
  static get bodySmallGray80002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80002,
      );
  static get bodySmallGray8000210 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80002,
        fontSize: 10.fSize,
      );
  static get bodySmallGreen400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green400,
        fontSize: 10.fSize,
      );
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get bodySmallMontserratOnError =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 10.fSize,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodySmallRed300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red300,
        fontSize: 10.fSize,
      );
  static get bodySmallRed300_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red300,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallWhiteA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Headline text style
  static get headlineSmallAmber600 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.amber600,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRedA200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA200,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 18.fSize,
      );
  static get titleMediumGreenA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 19.fSize,
      );
  static get titleMediumPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumRed300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red300,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallBluegray40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallGray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10001,
      );
  static get titleSmallGray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallMontserratGray40004 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray40004,
      );
  static get titleSmallOpenSansPrimary =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPink300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink300,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRed300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red300,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
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
}
