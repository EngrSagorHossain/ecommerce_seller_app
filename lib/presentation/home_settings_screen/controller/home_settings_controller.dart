import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/home_settings_screen/models/home_settings_model.dart';/// A controller class for the HomeSettingsScreen.
///
/// This class manages the state of the HomeSettingsScreen, including the
/// current homeSettingsModelObj
class HomeSettingsController extends GetxController {Rx<HomeSettingsModel> homeSettingsModelObj = HomeSettingsModel().obs;

 }
