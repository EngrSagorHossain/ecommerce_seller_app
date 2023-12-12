import '../../../core/app_export.dart';/// This class is used in the [productcard4_item_widget] screen.
class Productcard4ItemModel {Productcard4ItemModel({this.imageClass, this.name, this.price, this.left, this.minus, this.quantity, this.plus, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);name = name  ?? Rx("Chanachur");price = price  ?? Rx("10.00");left = left  ?? Rx("Left 232");minus = minus  ?? Rx("- ");quantity = quantity  ?? Rx("1");plus = plus  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? name;

Rx<String>? price;

Rx<String>? left;

Rx<String>? minus;

Rx<String>? quantity;

Rx<String>? plus;

Rx<String>? id;

 }
