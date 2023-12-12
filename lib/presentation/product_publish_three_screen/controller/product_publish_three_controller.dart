import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/product_publish_three_screen/models/product_publish_three_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the ProductPublishThreeScreen.
///
/// This class manages the state of the ProductPublishThreeScreen, including the
/// current productPublishThreeModelObj
class ProductPublishThreeController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<ProductPublishThreeModel> productPublishThreeModelObj = ProductPublishThreeModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in productPublishThreeModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} productPublishThreeModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in productPublishThreeModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} productPublishThreeModelObj.value.dropdownItemList1.refresh(); } 
 }
