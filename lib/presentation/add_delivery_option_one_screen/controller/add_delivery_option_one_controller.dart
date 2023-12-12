import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_delivery_option_one_screen/models/add_delivery_option_one_model.dart';/// A controller class for the AddDeliveryOptionOneScreen.
///
/// This class manages the state of the AddDeliveryOptionOneScreen, including the
/// current addDeliveryOptionOneModelObj
class AddDeliveryOptionOneController extends GetxController {Rx<AddDeliveryOptionOneModel> addDeliveryOptionOneModelObj = AddDeliveryOptionOneModel().obs;

Rx<bool> noReturnOption = false.obs;

Rx<bool> bystoreinforFive = false.obs;

Rx<bool> multipletimeandpriceoption = false.obs;

Rx<bool> returnbywithNOfee = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

onSelected(dynamic value) { for (var element in addDeliveryOptionOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addDeliveryOptionOneModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addDeliveryOptionOneModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addDeliveryOptionOneModelObj.value.dropdownItemList1.refresh(); } 
 }
