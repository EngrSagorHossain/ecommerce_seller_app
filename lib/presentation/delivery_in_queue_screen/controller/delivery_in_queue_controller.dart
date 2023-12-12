import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/delivery_in_queue_screen/models/delivery_in_queue_model.dart';/// A controller class for the DeliveryInQueueScreen.
///
/// This class manages the state of the DeliveryInQueueScreen, including the
/// current deliveryInQueueModelObj
class DeliveryInQueueController extends GetxController {Rx<DeliveryInQueueModel> deliveryInQueueModelObj = DeliveryInQueueModel().obs;

 }
