import '../../../core/app_export.dart';/// This class is used in the [productcardlist1_item_widget] screen.
class Productcardlist1ItemModel {Productcardlist1ItemModel({this.title, this.subtitle, this.id, }) { title = title  ?? Rx("Samsung S20 ultra");subtitle = subtitle  ?? Rx("2000+ Items");id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? subtitle;

Rx<String>? id;

 }
