import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/order_filter_one_screen/models/order_filter_one_model.dart';/// A controller class for the OrderFilterOneScreen.
///
/// This class manages the state of the OrderFilterOneScreen, including the
/// current orderFilterOneModelObj
class OrderFilterOneController extends GetxController {Rx<OrderFilterOneModel> orderFilterOneModelObj = OrderFilterOneModel().obs;

Rx<bool> inProgress = false.obs;

Rx<bool> completed = false.obs;

 }
