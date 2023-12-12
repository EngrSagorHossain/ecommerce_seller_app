import '../../../core/app_export.dart';/// This class is used in the [productcardlist_item_widget] screen.
class ProductcardlistItemModel {ProductcardlistItemModel({this.image, this.author, this.ratingText, this.price, this.title, this.price1, this.quantity, this.detailsText, this.id, }) { image = image  ?? Rx(ImageConstant.img5d02da5df552836);author = author  ?? Rx("By: Shopno");ratingText = ratingText  ?? Rx("(4.8)");price = price  ?? Rx("890");title = title  ?? Rx("Samsung Airbud");price1 = price1  ?? Rx("150");quantity = quantity  ?? Rx("Quantity: 01");detailsText = detailsText  ?? Rx("More Details");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? author;

Rx<String>? ratingText;

Rx<String>? price;

Rx<String>? title;

Rx<String>? price1;

Rx<String>? quantity;

Rx<String>? detailsText;

Rx<String>? id;

 }
