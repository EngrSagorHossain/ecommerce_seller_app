import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/shop_details_two_tab_container_screen/models/shop_details_two_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ShopDetailsTwoTabContainerScreen.
///
/// This class manages the state of the ShopDetailsTwoTabContainerScreen, including the
/// current shopDetailsTwoTabContainerModelObj
class ShopDetailsTwoTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ShopDetailsTwoTabContainerModel> shopDetailsTwoTabContainerModelObj = ShopDetailsTwoTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
