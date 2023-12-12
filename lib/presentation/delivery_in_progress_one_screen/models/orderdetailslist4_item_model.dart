import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist4_item_widget] screen.
class Orderdetailslist4ItemModel {Orderdetailslist4ItemModel({this.orderID, this.status, this.electricPackage, this.amount, this.id, }) { orderID = orderID  ?? Rx("Order ID: AA4587V");status = status  ?? Rx("Status: In Progress");electricPackage = electricPackage  ?? Rx("Electric package 1");amount = amount  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? orderID;

Rx<String>? status;

Rx<String>? electricPackage;

Rx<String>? amount;

Rx<String>? id;

 }
