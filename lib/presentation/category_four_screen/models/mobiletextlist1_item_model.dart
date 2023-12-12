import '../../../core/app_export.dart';/// This class is used in the [mobiletextlist1_item_widget] screen.
class Mobiletextlist1ItemModel {Mobiletextlist1ItemModel({this.mobileText, this.id, }) { mobileText = mobileText  ?? Rx("Mobile");id = id  ?? Rx(""); }

Rx<String>? mobileText;

Rx<String>? id;

 }
