import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/empty_inbox_screen/models/empty_inbox_model.dart';

/// A controller class for the EmptyInboxScreen.
///
/// This class manages the state of the EmptyInboxScreen, including the
/// current emptyInboxModelObj
class EmptyInboxController extends GetxController {
  Rx<EmptyInboxModel> emptyInboxModelObj = EmptyInboxModel().obs;
}
