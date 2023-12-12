import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/package_details_screen/models/package_details_model.dart';/// A controller class for the PackageDetailsScreen.
///
/// This class manages the state of the PackageDetailsScreen, including the
/// current packageDetailsModelObj
class PackageDetailsController extends GetxController {Rx<PackageDetailsModel> packageDetailsModelObj = PackageDetailsModel().obs;

 }
