import '../../../core/app_export.dart';/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {Productcard1ItemModel({this.imageClass, this.title, this.price, this.availability, this.text, this.quantity, this.text1, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);title = title  ?? Rx("Chanachur");price = price  ?? Rx("10.00");availability = availability  ?? Rx("Left 232");text = text  ?? Rx("- ");quantity = quantity  ?? Rx("1");text1 = text1  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? title;

Rx<String>? price;

Rx<String>? availability;

Rx<String>? text;

Rx<String>? quantity;

Rx<String>? text1;

Rx<String>? id;

 }
