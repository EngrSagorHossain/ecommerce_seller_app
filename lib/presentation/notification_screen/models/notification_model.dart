import '../../../core/app_export.dart';import 'paymentnotificationlist_item_model.dart';import 'paymentnotification_item_model.dart';/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {Rx<List<PaymentnotificationlistItemModel>> paymentnotificationlistItemList = Rx([PaymentnotificationlistItemModel(paymentImage:ImageConstant.imgEllipse.obs,timeAgoText: "02 minutes ago".obs),PaymentnotificationlistItemModel(paymentImage:ImageConstant.imgEllipse50x50.obs,timeAgoText: "02 minutes ago".obs),PaymentnotificationlistItemModel(paymentImage:ImageConstant.imgEllipse1.obs,timeAgoText: "02 minutes ago".obs)]);

Rx<List<PaymentnotificationItemModel>> paymentnotificationItemList = Rx([PaymentnotificationItemModel(paymentImage:ImageConstant.imgEllipse2.obs,timeAgoText: "02 minutes ago".obs),PaymentnotificationItemModel(paymentImage:ImageConstant.imgEllipse3.obs,timeAgoText: "02 minutes ago".obs),PaymentnotificationItemModel(paymentImage:ImageConstant.imgEllipse1.obs,timeAgoText: "02 minutes ago".obs),PaymentnotificationItemModel(paymentImage:ImageConstant.imgEllipse5.obs,timeAgoText: "02 minutes ago".obs)]);

 }
