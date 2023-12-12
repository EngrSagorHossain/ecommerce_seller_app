import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/added_policy_screen/models/added_policy_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the AddedPolicyScreen.
///
/// This class manages the state of the AddedPolicyScreen, including the
/// current addedPolicyModelObj
class AddedPolicyController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddedPolicyModel> addedPolicyModelObj = AddedPolicyModel().obs;

Rx<bool> noReturnOption = false.obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in addedPolicyModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addedPolicyModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addedPolicyModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addedPolicyModelObj.value.dropdownItemList1.refresh(); } 
 }
