import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/added_policy_two_screen/models/added_policy_two_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the AddedPolicyTwoScreen.
///
/// This class manages the state of the AddedPolicyTwoScreen, including the
/// current addedPolicyTwoModelObj
class AddedPolicyTwoController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddedPolicyTwoModel> addedPolicyTwoModelObj = AddedPolicyTwoModel().obs;

Rx<bool> noReturnOptionCheckBox = false.obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in addedPolicyTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addedPolicyTwoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addedPolicyTwoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addedPolicyTwoModelObj.value.dropdownItemList1.refresh(); } 
 }
