import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_policy_two_screen/models/add_policy_two_model.dart';/// A controller class for the AddPolicyTwoScreen.
///
/// This class manages the state of the AddPolicyTwoScreen, including the
/// current addPolicyTwoModelObj
class AddPolicyTwoController extends GetxController {Rx<AddPolicyTwoModel> addPolicyTwoModelObj = AddPolicyTwoModel().obs;

Rx<bool> noReturnOption = false.obs;

Rx<bool> returnbywithNOfee = false.obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in addPolicyTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addPolicyTwoModelObj.value.dropdownItemList.refresh(); } 
 }
