import '../../../core/app_export.dart';/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {OrderdetailsItemModel({this.orderID, this.status, this.electricPackage, this.price, this.id, }) { orderID = orderID  ?? Rx("Order ID: AA4587V");status = status  ?? Rx("Status: In Queue");electricPackage = electricPackage  ?? Rx("Electric package 1");price = price  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? orderID;

Rx<String>? status;

Rx<String>? electricPackage;

Rx<String>? price;

Rx<String>? id;

 }
