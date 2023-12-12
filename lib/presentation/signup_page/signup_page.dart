import 'controller/signup_controller.dart';import 'models/signup_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/core/utils/validation_functions.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_icon_button.dart';import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:ecommerce_seller_app/domain/googleauth/google_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignupPage extends StatelessWidget {SignupPage({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

SignupController controller = Get.put(SignupController(SignupModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_create_an_account".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 8.v), Align(alignment: Alignment.centerLeft, child: Text("msg_create_an_account2".tr, style: CustomTextStyles.bodyMediumBluegray400_1)), SizedBox(height: 25.v), _buildCreateAccountText1(), SizedBox(height: 15.v), _buildCreateAccountText2(), SizedBox(height: 15.v), _buildEmailEditText(), SizedBox(height: 15.v), _buildPhoneNumberEditText(), SizedBox(height: 15.v), _buildPasswordEditText(), SizedBox(height: 15.v), _buildSignUpButton(), SizedBox(height: 30.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 11.v, bottom: 10.v), child: Text("lbl_continue_with".tr, style: CustomTextStyles.titleSmallBluegray400)), Padding(padding: EdgeInsets.only(left: 10.h), child: CustomIconButton(height: 43.v, width: 44.h, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.outlineBlue, child: CustomImageView(imagePath: ImageConstant.imgThumbsUp))), Padding(padding: EdgeInsets.only(left: 18.h), child: CustomIconButton(height: 43.v, width: 44.h, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.outlineBlue, onTap: () {onTapBtnGoogle();}, child: CustomImageView(imagePath: ImageConstant.imgGoogle)))]), SizedBox(height: 28.v), GestureDetector(onTap: () {onTapTxtHaveanaccount();}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_have_an_account2".tr, style: CustomTextStyles.bodyMediumBluegray40002), TextSpan(text: " "), TextSpan(text: "lbl_sign_in".tr, style: CustomTextStyles.titleSmallPrimarySemiBold)]), textAlign: TextAlign.left))]))]))))); } 
/// Section Widget
Widget _buildCreateAccountText1() { return CustomTextFormField(controller: controller.createAccountText1Controller, hintText: "lbl_store_name".tr, hintStyle: CustomTextStyles.titleMediumPrimaryContainer_1, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}); } 
/// Section Widget
Widget _buildCreateAccountText2() { return CustomTextFormField(controller: controller.createAccountText2Controller, hintText: "lbl_your_name".tr, hintStyle: CustomTextStyles.bodyLargeBluegray40002, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineGray, fillColor: appTheme.whiteA700); } 
/// Section Widget
Widget _buildEmailEditText() { return CustomTextFormField(controller: controller.emailEditTextController, hintText: "msg_your_email_address".tr, hintStyle: CustomTextStyles.bodyLargeBluegray40002, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineGray, fillColor: appTheme.whiteA700); } 
/// Section Widget
Widget _buildPhoneNumberEditText() { return CustomTextFormField(controller: controller.phoneNumberEditTextController, hintText: "msg_your_phone_number".tr, hintStyle: CustomTextStyles.bodyLargeBluegray40002, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineGray, fillColor: appTheme.whiteA700); } 
/// Section Widget
Widget _buildPasswordEditText() { return CustomTextFormField(controller: controller.passwordEditTextController, hintText: "lbl_create_password".tr, hintStyle: CustomTextStyles.bodyLargeBluegray40002, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, borderDecoration: TextFormFieldStyleHelper.outlineGray, fillColor: appTheme.whiteA700); } 
/// Section Widget
Widget _buildSignUpButton() { return CustomElevatedButton(text: "lbl_sign_up".tr, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1, onPressed: () {onTapSignUpButton();}); } 
/// Navigates to the verificationScreen when the action is triggered.
onTapSignUpButton() { Get.toNamed(AppRoutes.verificationScreen, ); } 
onTapBtnGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
/// Navigates to the signinTabContainerScreen when the action is triggered.
onTapTxtHaveanaccount() { Get.toNamed(AppRoutes.signinTabContainerScreen, ); } 
 }
