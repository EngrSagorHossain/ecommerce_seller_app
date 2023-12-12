import 'controller/shop_details_one_controller.dart';import 'models/shop_details_one_model.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/core/utils/validation_functions.dart';import 'package:ecommerce_seller_app/widgets/custom_checkbox_button.dart';import 'package:ecommerce_seller_app/widgets/custom_elevated_button.dart';import 'package:ecommerce_seller_app/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ShopDetailsOnePage extends StatelessWidget {ShopDetailsOnePage({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

ShopDetailsOneController controller = Get.put(ShopDetailsOneController(ShopDetailsOneModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 19.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildOwnerDetails(), SizedBox(height: 16.v), _buildOwnerNIDPassportDetails(), SizedBox(height: 11.v), _buildPhoneDetails(), SizedBox(height: 7.v), _buildEmailDetails(), SizedBox(height: 13.v), _buildInformationValidity(), SizedBox(height: 27.v), CustomElevatedButton(text: "msg_saved_successfully".tr, onPressed: () {onTapSavedSuccessfully();})]))]))))); } 
/// Section Widget
Widget _buildOwnerDetails() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_owner_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: controller.nameController, hintText: "msg_enter_owner_name".tr, hintStyle: CustomTextStyles.bodyMediumGray400, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;})]); } 
/// Section Widget
Widget _buildOwnerNIDPassportDetails() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_owner_nid_passport".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: controller.ownerNIDPassportNumberController, hintText: "msg_enter_nid_passport".tr, hintStyle: CustomTextStyles.bodyMediumGray400, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;})]); } 
/// Section Widget
Widget _buildPhoneDetails() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_phone".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: controller.phoneController, hintText: "msg_enter_phone_number".tr, hintStyle: CustomTextStyles.bodyMediumGray400, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;})]); } 
/// Section Widget
Widget _buildEmailDetails() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_e_mail".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), CustomTextFormField(controller: controller.emailController, hintText: "msg_enter_e_mail_address".tr, hintStyle: CustomTextStyles.bodyMediumGray400, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;})]); } 
/// Section Widget
Widget _buildInformationValidity() { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 69.h), child: Obx(() => CustomCheckboxButton(alignment: Alignment.centerLeft, text: "msg_provided_all_information".tr, value: controller.informationValidity.value, textStyle: CustomTextStyles.bodyMediumGray80002, onChange: (value) {controller.informationValidity.value = value;})))); } 
/// Navigates to the homeSettingsScreen when the action is triggered.
onTapSavedSuccessfully() { Get.toNamed(AppRoutes.homeSettingsScreen, ); } 
 }
