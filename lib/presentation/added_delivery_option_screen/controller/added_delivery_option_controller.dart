import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/added_delivery_option_screen/models/added_delivery_option_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the AddedDeliveryOptionScreen.
///
/// This class manages the state of the AddedDeliveryOptionScreen, including the
/// current addedDeliveryOptionModelObj
class AddedDeliveryOptionController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddedDeliveryOptionModel> addedDeliveryOptionModelObj = AddedDeliveryOptionModel().obs;

Rx<bool> noReturnOptionCheckBox = false.obs;

Rx<bool> byStoreInfoCheckBox = false.obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in addedDeliveryOptionModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addedDeliveryOptionModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addedDeliveryOptionModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addedDeliveryOptionModelObj.value.dropdownItemList1.refresh(); } 
 }
