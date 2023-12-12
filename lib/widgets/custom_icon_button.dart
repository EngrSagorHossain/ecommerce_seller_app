import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(21.h),
                  border: Border.all(
                    color: appTheme.blue5003,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(
          color: appTheme.blue5003,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueTL16 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.blue5003,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.blueGray40002,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimaryContainerTL10 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPrimaryTL15 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillGray1 => BoxDecoration(
        color: appTheme.gray60001,
      );
  static BoxDecoration get fillGrayTL22 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(22.h),
      );
}
