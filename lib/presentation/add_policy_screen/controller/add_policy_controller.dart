import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_policy_screen/models/add_policy_model.dart';/// A controller class for the AddPolicyScreen.
///
/// This class manages the state of the AddPolicyScreen, including the
/// current addPolicyModelObj
class AddPolicyController extends GetxController {Rx<AddPolicyModel> addPolicyModelObj = AddPolicyModel().obs;

Rx<bool> noReturnOption = false.obs;

Rx<bool> returnbywithNOfee = false.obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in addPolicyModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addPolicyModelObj.value.dropdownItemList.refresh(); } 
 }
