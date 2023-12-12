import '../../../core/app_export.dart';/// This class is used in the [productcard12_item_widget] screen.
class Productcard12ItemModel {Productcard12ItemModel({this.imageClass, this.productName, this.productPrice, this.productAvailability, this.text, this.quantity, this.text1, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);productName = productName  ?? Rx("Chanachur");productPrice = productPrice  ?? Rx("10.00");productAvailability = productAvailability  ?? Rx("Left 232");text = text  ?? Rx("- ");quantity = quantity  ?? Rx("1");text1 = text1  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? productAvailability;

Rx<String>? text;

Rx<String>? quantity;

Rx<String>? text1;

Rx<String>? id;

 }
