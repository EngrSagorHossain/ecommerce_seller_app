import '../../../core/app_export.dart';/// This class is used in the [productcategorylist_item_widget] screen.
class ProductcategorylistItemModel {ProductcategorylistItemModel({this.categoryImage, this.categoryTitle, this.categoryItemCount, this.id, }) { categoryImage = categoryImage  ?? Rx(ImageConstant.imgEllipse4);categoryTitle = categoryTitle  ?? Rx("Electronics");categoryItemCount = categoryItemCount  ?? Rx("2000+ Items");id = id  ?? Rx(""); }

Rx<String>? categoryImage;

Rx<String>? categoryTitle;

Rx<String>? categoryItemCount;

Rx<String>? id;

 }
