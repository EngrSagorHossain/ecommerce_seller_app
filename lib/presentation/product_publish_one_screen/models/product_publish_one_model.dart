import '../../../core/app_export.dart';import 'productcard1_item_model.dart';import 'package:ecommerce_seller_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [product_publish_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductPublishOneModel {Rx<List<Productcard1ItemModel>> productcard1ItemList = Rx([Productcard1ItemModel(imageClass:ImageConstant.imgInfo.obs,title: "Chanachur".obs,price: "10.00".obs,availability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs),Productcard1ItemModel(imageClass:ImageConstant.imgProfile.obs,title: "Biscuits".obs,price: "10.00".obs,availability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs),Productcard1ItemModel(imageClass:ImageConstant.imgInfo.obs,title: "Chips".obs,price: "10.00".obs,availability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs),Productcard1ItemModel(imageClass:ImageConstant.imgInfo.obs,title: "Cake".obs,price: "10.00".obs,availability: "Left 232".obs,text: "- ".obs,quantity: "1".obs,text1: "+".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
