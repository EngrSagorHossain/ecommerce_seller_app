import 'controller/splash_controller.dart';import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:flutter/material.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 10.v), CustomImageView(imagePath: ImageConstant.imgLayer1, height: 81.v, width: 87.h), SizedBox(height: 9.v), Text("lbl_app_name".tr, style: theme.textTheme.displayMedium)])))); } 
 }
