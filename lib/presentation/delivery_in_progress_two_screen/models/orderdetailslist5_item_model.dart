import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist5_item_widget] screen.
class Orderdetailslist5ItemModel {Orderdetailslist5ItemModel({this.orderID, this.status, this.electricPackage, this.amount, this.id, }) { orderID = orderID  ?? Rx("Order ID: AA4587V");status = status  ?? Rx("Status: Completed");electricPackage = electricPackage  ?? Rx("Electric package 1");amount = amount  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? orderID;

Rx<String>? status;

Rx<String>? electricPackage;

Rx<String>? amount;

Rx<String>? id;

 }
