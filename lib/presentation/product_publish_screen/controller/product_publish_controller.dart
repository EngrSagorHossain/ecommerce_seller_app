import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/product_publish_screen/models/product_publish_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the ProductPublishScreen.
///
/// This class manages the state of the ProductPublishScreen, including the
/// current productPublishModelObj
class ProductPublishController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<ProductPublishModel> productPublishModelObj = ProductPublishModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in productPublishModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} productPublishModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in productPublishModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} productPublishModelObj.value.dropdownItemList1.refresh(); } 
 }
