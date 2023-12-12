import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist3_item_widget] screen.
class Orderdetailslist3ItemModel {Orderdetailslist3ItemModel({this.orderImage, this.moreImages, this.moreImages1, this.moreImages2, this.moreText, this.orderText, this.packageText, this.priceText, this.id, }) { orderImage = orderImage  ?? Rx(ImageConstant.img5d02da5df552836);moreImages = moreImages  ?? Rx(ImageConstant.imgHuaweiFreebuds);moreImages1 = moreImages1  ?? Rx(ImageConstant.imgDCc1);moreImages2 = moreImages2  ?? Rx(ImageConstant.img9447441f632825);moreText = moreText  ?? Rx("2 more");orderText = orderText  ?? Rx("Order ID: AA4587V");packageText = packageText  ?? Rx("Electric package 1");priceText = priceText  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? orderImage;

Rx<String>? moreImages;

Rx<String>? moreImages1;

Rx<String>? moreImages2;

Rx<String>? moreText;

Rx<String>? orderText;

Rx<String>? packageText;

Rx<String>? priceText;

Rx<String>? id;

 }
