import '../../../core/app_export.dart';/// This class is used in the [productcard9_item_widget] screen.
class Productcard9ItemModel {Productcard9ItemModel({this.imageClass, this.title, this.price, this.description, this.bulletPoint1, this.bulletPoint2, this.bulletPoint3, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);title = title  ?? Rx("Chanachur");price = price  ?? Rx("10.00");description = description  ?? Rx("Left 232");bulletPoint1 = bulletPoint1  ?? Rx("- ");bulletPoint2 = bulletPoint2  ?? Rx("1");bulletPoint3 = bulletPoint3  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? title;

Rx<String>? price;

Rx<String>? description;

Rx<String>? bulletPoint1;

Rx<String>? bulletPoint2;

Rx<String>? bulletPoint3;

Rx<String>? id;

 }
