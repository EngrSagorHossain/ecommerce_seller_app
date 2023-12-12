import 'package:flutter/material.dart';
import 'package:ecommerce_seller_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue10001,
      );
  static BoxDecoration get fillBlue100 => BoxDecoration(
        color: appTheme.blue100,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlueAC => BoxDecoration(
        color: appTheme.blueA2004c,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink50,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.29),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray40002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray40002 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray40002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL38 => BorderRadius.vertical(
        bottom: Radius.circular(38.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
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
    