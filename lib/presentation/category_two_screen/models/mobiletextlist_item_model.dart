import '../../../core/app_export.dart';/// This class is used in the [mobiletextlist_item_widget] screen.
class MobiletextlistItemModel {MobiletextlistItemModel({this.mobileText, this.id, }) { mobileText = mobileText  ?? Rx("Mobile");id = id  ?? Rx(""); }

Rx<String>? mobileText;

Rx<String>? id;

 }
