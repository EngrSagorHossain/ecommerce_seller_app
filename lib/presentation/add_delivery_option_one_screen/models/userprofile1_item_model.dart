import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.imageClass, this.text, this.text1, this.text2, this.text3, this.text4, this.text5, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgInfo);text = text  ?? Rx("Chanachur");text1 = text1  ?? Rx("10.00");text2 = text2  ?? Rx("Left 232");text3 = text3  ?? Rx("- ");text4 = text4  ?? Rx("1");text5 = text5  ?? Rx("+");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? text;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? text3;

Rx<String>? text4;

Rx<String>? text5;

Rx<String>? id;

 }
