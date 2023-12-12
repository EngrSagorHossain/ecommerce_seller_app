import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist_item_widget] screen.
class OrderdetailslistItemModel {OrderdetailslistItemModel({this.orderID, this.packageName, this.price, this.id, }) { orderID = orderID  ?? Rx("Order ID: AA4587V");packageName = packageName  ?? Rx("Electric package 1");price = price  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? orderID;

Rx<String>? packageName;

Rx<String>? price;

Rx<String>? id;

 }
