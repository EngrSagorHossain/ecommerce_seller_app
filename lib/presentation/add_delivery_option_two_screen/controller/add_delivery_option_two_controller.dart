import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_delivery_option_two_screen/models/add_delivery_option_two_model.dart';/// A controller class for the AddDeliveryOptionTwoScreen.
///
/// This class manages the state of the AddDeliveryOptionTwoScreen, including the
/// current addDeliveryOptionTwoModelObj
class AddDeliveryOptionTwoController extends GetxController {Rx<AddDeliveryOptionTwoModel> addDeliveryOptionTwoModelObj = AddDeliveryOptionTwoModel().obs;

Rx<bool> noReturnOption = false.obs;

Rx<bool> bystoreinforFive = false.obs;

Rx<bool> multipletimeandpriceoption = false.obs;

Rx<bool> returnbywithNOfee = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

onSelected(dynamic value) { for (var element in addDeliveryOptionTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addDeliveryOptionTwoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addDeliveryOptionTwoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addDeliveryOptionTwoModelObj.value.dropdownItemList1.refresh(); } 
 }
