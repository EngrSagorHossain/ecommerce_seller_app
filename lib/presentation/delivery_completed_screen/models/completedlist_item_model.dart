import '../../../core/app_export.dart';/// This class is used in the [completedlist_item_widget] screen.
class CompletedlistItemModel {CompletedlistItemModel({this.orderImage, this.moreImages, this.moreImages1, this.moreImages2, this.moreText, this.orderID, this.packageName, this.price, this.id, }) { orderImage = orderImage  ?? Rx(ImageConstant.img5d02da5df552836);moreImages = moreImages  ?? Rx(ImageConstant.imgHuaweiFreebuds);moreImages1 = moreImages1  ?? Rx(ImageConstant.imgDCc1);moreImages2 = moreImages2  ?? Rx(ImageConstant.img9447441f632825);moreText = moreText  ?? Rx("2 more");orderID = orderID  ?? Rx("Order ID: AA4587V");packageName = packageName  ?? Rx("Electric package 1");price = price  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? orderImage;

Rx<String>? moreImages;

Rx<String>? moreImages1;

Rx<String>? moreImages2;

Rx<String>? moreText;

Rx<String>? orderID;

Rx<String>? packageName;

Rx<String>? price;

Rx<String>? id;

 }
