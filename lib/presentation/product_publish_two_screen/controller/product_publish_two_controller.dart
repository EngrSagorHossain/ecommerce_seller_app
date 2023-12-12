import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/product_publish_two_screen/models/product_publish_two_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the ProductPublishTwoScreen.
///
/// This class manages the state of the ProductPublishTwoScreen, including the
/// current productPublishTwoModelObj
class ProductPublishTwoController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<ProductPublishTwoModel> productPublishTwoModelObj = ProductPublishTwoModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in productPublishTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} productPublishTwoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in productPublishTwoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} productPublishTwoModelObj.value.dropdownItemList1.refresh(); } 
 }
