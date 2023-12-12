import '../../../core/app_export.dart';import 'productcard4_item_model.dart';import 'package:ecommerce_seller_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [add_policy_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPolicyTwoModel {Rx<List<Productcard4ItemModel>> productcard4ItemList = Rx([Productcard4ItemModel(imageClass:ImageConstant.imgInfo.obs,name: "Chanachur".obs,price: "10.00".obs,left: "Left 232".obs,minus: "- ".obs,quantity: "1".obs,plus: "+".obs),Productcard4ItemModel(imageClass:ImageConstant.imgProfile.obs,name: "Biscuits".obs,price: "10.00".obs,left: "Left 232".obs,minus: "- ".obs,quantity: "1".obs,plus: "+".obs),Productcard4ItemModel(imageClass:ImageConstant.imgInfo.obs,name: "Chips".obs,price: "10.00".obs,left: "Left 232".obs,minus: "- ".obs,quantity: "1".obs,plus: "+".obs),Productcard4ItemModel(imageClass:ImageConstant.imgInfo.obs,name: "Cake".obs,price: "10.00".obs,left: "Left 232".obs,minus: "- ".obs,quantity: "1".obs,plus: "+".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
