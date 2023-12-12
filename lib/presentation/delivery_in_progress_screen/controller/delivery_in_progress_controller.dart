import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/delivery_in_progress_screen/models/delivery_in_progress_model.dart';/// A controller class for the DeliveryInProgressScreen.
///
/// This class manages the state of the DeliveryInProgressScreen, including the
/// current deliveryInProgressModelObj
class DeliveryInProgressController extends GetxController {Rx<DeliveryInProgressModel> deliveryInProgressModelObj = DeliveryInProgressModel().obs;

 }
