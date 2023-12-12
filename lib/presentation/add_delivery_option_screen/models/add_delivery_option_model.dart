import '../../../core/app_export.dart';import 'productcard12_item_model.dart';import 'package:ecommerce_seller_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [add_delivery_option_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddDeliveryOptionModel {Rx<List<Productcard12ItemModel>> productcard12ItemList = Rx([Productcard12ItemModel(imageClass:ImageConstant.imgInfo.obs,productName: "Chanachur".obs,productPrice: "10.00".obs,productAvailability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs),Productcard12ItemModel(imageClass:ImageConstant.imgProfile.obs,productName: "Biscuits".obs,productPrice: "10.00".obs,productAvailability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs),Productcard12ItemModel(imageClass:ImageConstant.imgInfo.obs,productName: "Chips".obs,productPrice: "10.00".obs,productAvailability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs),Productcard12ItemModel(imageClass:ImageConstant.imgInfo.obs,productName: "Cake".obs,productPrice: "10.00".obs,productAvailability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
