import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/successfull_one_screen/models/successfull_one_model.dart';

/// A controller class for the SuccessfullOneScreen.
///
/// This class manages the state of the SuccessfullOneScreen, including the
/// current successfullOneModelObj
class SuccessfullOneController extends GetxController {
  Rx<SuccessfullOneModel> successfullOneModelObj = SuccessfullOneModel().obs;
}
