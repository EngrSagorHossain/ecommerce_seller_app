import '../../../core/app_export.dart';/// This class is used in the [paymentnotificationlist_item_widget] screen.
class PaymentnotificationlistItemModel {PaymentnotificationlistItemModel({this.paymentImage, this.timeAgoText, this.id, }) { paymentImage = paymentImage  ?? Rx(ImageConstant.imgEllipse);timeAgoText = timeAgoText  ?? Rx("02 minutes ago");id = id  ?? Rx(""); }

Rx<String>? paymentImage;

Rx<String>? timeAgoText;

Rx<String>? id;

 }
