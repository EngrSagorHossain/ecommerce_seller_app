import '../../../core/app_export.dart';/// This class is used in the [productcard13_item_widget] screen.
class Productcard13ItemModel {Productcard13ItemModel({this.imageClass, this.productName, this.productPrice, this.productLeft, this.text, this.quantity, this.text1, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);productName = productName  ?? Rx("Chanachur");productPrice = productPrice  ?? Rx("10.00");productLeft = productLeft  ?? Rx("Left 232");text = text  ?? Rx("- ");quantity = quantity  ?? Rx("1");text1 = text1  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? productLeft;

Rx<String>? text;

Rx<String>? quantity;

Rx<String>? text1;

Rx<String>? id;

 }
