import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.chanachur, this.id, }) { chanachur = chanachur  ?? Rx("Chanachur");id = id  ?? Rx(""); }

Rx<String>? chanachur;

Rx<String>? id;

 }
