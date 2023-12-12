import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/successfull_screen/models/successfull_model.dart';

/// A controller class for the SuccessfullScreen.
///
/// This class manages the state of the SuccessfullScreen, including the
/// current successfullModelObj
class SuccessfullController extends GetxController {
  Rx<SuccessfullModel> successfullModelObj = SuccessfullModel().obs;
}
