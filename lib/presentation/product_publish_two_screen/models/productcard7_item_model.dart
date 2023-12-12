import '../../../core/app_export.dart';/// This class is used in the [productcard7_item_widget] screen.
class Productcard7ItemModel {Productcard7ItemModel({this.imageClass, this.productName, this.productPrice, this.productLeft, this.minusSign, this.quantity, this.plusSign, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);productName = productName  ?? Rx("Chanachur");productPrice = productPrice  ?? Rx("10.00");productLeft = productLeft  ?? Rx("Left 232");minusSign = minusSign  ?? Rx("- ");quantity = quantity  ?? Rx("1");plusSign = plusSign  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? productLeft;

Rx<String>? minusSign;

Rx<String>? quantity;

Rx<String>? plusSign;

Rx<String>? id;

 }
