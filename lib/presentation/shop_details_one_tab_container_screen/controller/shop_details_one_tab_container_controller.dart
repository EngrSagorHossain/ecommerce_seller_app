import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/shop_details_one_tab_container_screen/models/shop_details_one_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ShopDetailsOneTabContainerScreen.
///
/// This class manages the state of the ShopDetailsOneTabContainerScreen, including the
/// current shopDetailsOneTabContainerModelObj
class ShopDetailsOneTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ShopDetailsOneTabContainerModel> shopDetailsOneTabContainerModelObj = ShopDetailsOneTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
