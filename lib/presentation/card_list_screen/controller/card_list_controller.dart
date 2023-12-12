import 'package:ecommerce_seller_app/core/app_export.dart';import 'package:ecommerce_seller_app/presentation/card_list_screen/models/card_list_model.dart';/// A controller class for the CardListScreen.
///
/// This class manages the state of the CardListScreen, including the
/// current cardListModelObj
class CardListController extends GetxController {Rx<CardListModel> cardListModelObj = CardListModel().obs;

 }
