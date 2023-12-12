import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';import 'package:ecommerce_seller_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [add_delivery_option_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddDeliveryOptionOneModel {Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([Userprofile1ItemModel(imageClass:ImageConstant.imgInfo.obs,text: "Chanachur".obs,text1: "10.00".obs,text2: "Left 232".obs,text3: "- ".obs,text4: "1".obs,text5: "+".obs),Userprofile1ItemModel(imageClass:ImageConstant.imgProfile.obs,text: "Biscuits".obs,text1: "10.00".obs,text2: "Left 232".obs,text3: "- ".obs,text4: "1".obs,text5: "+".obs),Userprofile1ItemModel(imageClass:ImageConstant.imgInfo.obs,text: "Chips".obs,text1: "10.00".obs,text2: "Left 232".obs,text3: "- ".obs,text4: "1".obs,text5: "+".obs),Userprofile1ItemModel(imageClass:ImageConstant.imgInfo.obs,text: "Cake".obs,text1: "10.00".obs,text2: "Left 232".obs,text3: "- ".obs,text4: "1".obs,text5: "+".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
