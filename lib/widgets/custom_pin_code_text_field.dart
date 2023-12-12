import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 8,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.bodyLargeBlack900,
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeBlack900,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinTheme: PinTheme(
          fieldHeight: 40.h,
          fieldWidth: 40.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8.h),
          selectedColor: appTheme.blueGray40002,
          errorBorderColor: appTheme.red300,
          inactiveColor: appTheme.greenA700,
          activeColor: appTheme.greenA700,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
