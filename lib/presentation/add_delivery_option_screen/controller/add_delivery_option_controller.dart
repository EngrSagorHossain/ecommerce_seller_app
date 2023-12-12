import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_delivery_option_screen/models/add_delivery_option_model.dart';/// A controller class for the AddDeliveryOptionScreen.
///
/// This class manages the state of the AddDeliveryOptionScreen, including the
/// current addDeliveryOptionModelObj
class AddDeliveryOptionController extends GetxController {Rx<AddDeliveryOptionModel> addDeliveryOptionModelObj = AddDeliveryOptionModel().obs;

Rx<bool> noReturnOption = false.obs;

Rx<bool> bystoreinforFive = false.obs;

Rx<bool> multipletimeandpriceoption = false.obs;

Rx<bool> returnbywithNOfee = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

onSelected(dynamic value) { for (var element in addDeliveryOptionModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addDeliveryOptionModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addDeliveryOptionModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addDeliveryOptionModelObj.value.dropdownItemList1.refresh(); } 
 }
