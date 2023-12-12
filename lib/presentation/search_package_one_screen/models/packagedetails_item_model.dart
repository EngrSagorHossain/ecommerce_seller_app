import '../../../core/app_export.dart';/// This class is used in the [packagedetails_item_widget] screen.
class PackagedetailsItemModel {PackagedetailsItemModel({this.moreText, this.packageName, this.packagePrice, this.id, }) { moreText = moreText  ?? Rx("2 more");packageName = packageName  ?? Rx("Electric package 1");packagePrice = packagePrice  ?? Rx("50.00");id = id  ?? Rx(""); }

Rx<String>? moreText;

Rx<String>? packageName;

Rx<String>? packagePrice;

Rx<String>? id;

 }
