import 'package:ecommerce_seller_app/core/app_export.dart';
import 'package:ecommerce_seller_app/presentation/icon_screen/models/icon_model.dart';

/// A controller class for the IconScreen.
///
/// This class manages the state of the IconScreen, including the
/// current iconModelObj
class IconController extends GetxController {
  Rx<IconModel> iconModelObj = IconModel().obs;
}
