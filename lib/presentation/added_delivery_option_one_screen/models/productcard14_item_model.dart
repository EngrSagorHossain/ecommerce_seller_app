import '../../../core/app_export.dart';/// This class is used in the [productcard14_item_widget] screen.
class Productcard14ItemModel {Productcard14ItemModel({this.imageClass, this.productName, this.productPrice, this.productAvailability, this.minusSign, this.quantity, this.plusSign, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);productName = productName  ?? Rx("Chanachur");productPrice = productPrice  ?? Rx("10.00");productAvailability = productAvailability  ?? Rx("Left 232");minusSign = minusSign  ?? Rx("- ");quantity = quantity  ?? Rx("1");plusSign = plusSign  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? productAvailability;

Rx<String>? minusSign;

Rx<String>? quantity;

Rx<String>? plusSign;

Rx<String>? id;

 }
