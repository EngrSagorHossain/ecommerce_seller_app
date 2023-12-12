import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/add_policy_one_screen/models/add_policy_one_model.dart';/// A controller class for the AddPolicyOneScreen.
///
/// This class manages the state of the AddPolicyOneScreen, including the
/// current addPolicyOneModelObj
class AddPolicyOneController extends GetxController {Rx<AddPolicyOneModel> addPolicyOneModelObj = AddPolicyOneModel().obs;

Rx<bool> noReturnOption = false.obs;

Rx<bool> returnbywithNOfee = false.obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in addPolicyOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addPolicyOneModelObj.value.dropdownItemList.refresh(); } 
 }
