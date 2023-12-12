import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/date_filter_tab_container_screen/models/date_filter_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the DateFilterTabContainerScreen.
///
/// This class manages the state of the DateFilterTabContainerScreen, including the
/// current dateFilterTabContainerModelObj
class DateFilterTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<DateFilterTabContainerModel> dateFilterTabContainerModelObj = DateFilterTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
