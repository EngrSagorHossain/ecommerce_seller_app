import '../../../core/app_export.dart';import 'productcard9_item_model.dart';import 'package:ecommerce_seller_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [added_policy_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddedPolicyTwoModel {Rx<List<Productcard9ItemModel>> productcard9ItemList = Rx([Productcard9ItemModel(imageClass:ImageConstant.imgInfo.obs,title: "Chanachur".obs,price: "10.00".obs,description: "Left 232".obs,bulletPoint1: "- ".obs,bulletPoint2: "1".obs,bulletPoint3: "+".obs),Productcard9ItemModel(imageClass:ImageConstant.imgProfile.obs,title: "Biscuits".obs,price: "10.00".obs,description: "Left 232".obs,bulletPoint1: "- ".obs,bulletPoint2: "1".obs,bulletPoint3: "+".obs),Productcard9ItemModel(imageClass:ImageConstant.imgInfo.obs,title: "Chips".obs,price: "10.00".obs,description: "Left 232".obs,bulletPoint1: "- ".obs,bulletPoint2: "1".obs,bulletPoint3: "+".obs),Productcard9ItemModel(imageClass:ImageConstant.imgInfo.obs,title: "Cake".obs,price: "10.00".obs,description: "Left 232".obs,bulletPoint1: "- ".obs,bulletPoint2: "1".obs,bulletPoint3: "+".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
