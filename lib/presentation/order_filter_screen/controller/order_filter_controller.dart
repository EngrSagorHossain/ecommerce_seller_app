import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/order_filter_screen/models/order_filter_model.dart';/// A controller class for the OrderFilterScreen.
///
/// This class manages the state of the OrderFilterScreen, including the
/// current orderFilterModelObj
class OrderFilterController extends GetxController {Rx<OrderFilterModel> orderFilterModelObj = OrderFilterModel().obs;

Rx<bool> cancel = false.obs;

 }
