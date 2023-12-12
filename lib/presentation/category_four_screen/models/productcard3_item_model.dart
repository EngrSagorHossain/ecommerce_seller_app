import '../../../core/app_export.dart';/// This class is used in the [productcard3_item_widget] screen.
class Productcard3ItemModel {Productcard3ItemModel({this.title, this.subtitle, this.id, }) { title = title  ?? Rx("Samsung S20 ultra");subtitle = subtitle  ?? Rx("2000+ Items");id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? subtitle;

Rx<String>? id;

 }
