import '../../../core/app_export.dart';/// This class is used in the [paymentnotification_item_widget] screen.
class PaymentnotificationItemModel {PaymentnotificationItemModel({this.paymentImage, this.timeAgoText, this.id, }) { paymentImage = paymentImage  ?? Rx(ImageConstant.imgEllipse2);timeAgoText = timeAgoText  ?? Rx("02 minutes ago");id = id  ?? Rx(""); }

Rx<String>? paymentImage;

Rx<String>? timeAgoText;

Rx<String>? id;

 }
