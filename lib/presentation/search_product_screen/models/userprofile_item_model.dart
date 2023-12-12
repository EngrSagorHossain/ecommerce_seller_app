import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.userName, this.userAmount, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse1396);userName = userName  ?? Rx("Chanachur");userAmount = userAmount  ?? Rx("10.00");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userName;

Rx<String>? userAmount;

Rx<String>? id;

 }
