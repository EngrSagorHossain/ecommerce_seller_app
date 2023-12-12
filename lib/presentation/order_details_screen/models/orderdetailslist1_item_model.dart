import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist1_item_widget] screen.
class Orderdetailslist1ItemModel {Orderdetailslist1ItemModel({this.moreText, this.orderText, this.packageText, this.priceText, this.id, }) { moreText = moreText  ?? Rx("2 more");orderText = orderText  ?? Rx("Order ID: AA4587V");packageText = packageText  ?? Rx("Electric package 1");priceText = priceText  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? moreText;

Rx<String>? orderText;

Rx<String>? packageText;

Rx<String>? priceText;

Rx<String>? id;

 }
