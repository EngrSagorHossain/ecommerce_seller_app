import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_card_blank_one_screen/models/add_card_blank_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddCardBlankOneScreen.
///
/// This class manages the state of the AddCardBlankOneScreen, including the
/// current addCardBlankOneModelObj
class AddCardBlankOneController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddCardBlankOneModel> addCardBlankOneModelObj = AddCardBlankOneModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); cardNumberController.dispose(); cvvController.dispose(); } 
onSelected(dynamic value) { for (var element in addCardBlankOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addCardBlankOneModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addCardBlankOneModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addCardBlankOneModelObj.value.dropdownItemList1.refresh(); } 
 }
