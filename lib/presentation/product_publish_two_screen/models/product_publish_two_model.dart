import '../../../core/app_export.dart';import 'productcard7_item_model.dart';import 'package:ecommerce_seller_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [product_publish_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductPublishTwoModel {Rx<List<Productcard7ItemModel>> productcard7ItemList = Rx([Productcard7ItemModel(imageClass:ImageConstant.imgInfo.obs,productName: "Chanachur".obs,productPrice: "10.00".obs,productLeft: "Left 232".obs,minusSign: "- ".obs,quantity: "1".obs,plusSign: "+".obs),Productcard7ItemModel(imageClass:ImageConstant.imgProfile.obs,productName: "Biscuits".obs,productPrice: "10.00".obs,productLeft: "Left 232".obs,minusSign: "- ".obs,quantity: "1".obs,plusSign: "+".obs),Productcard7ItemModel(imageClass:ImageConstant.imgInfo.obs,productName: "Chips".obs,productPrice: "10.00".obs,productLeft: "Left 232".obs,minusSign: "- ".obs,quantity: "1".obs,plusSign: "+".obs),Productcard7ItemModel(imageClass:ImageConstant.imgInfo.obs,productName: "Cake".obs,productPrice: "10.00".obs,productLeft: "Left 232".obs,minusSign: "- ".obs,quantity: "1".obs,plusSign: "+".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
