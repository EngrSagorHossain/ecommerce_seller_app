import 'package:ecommerce_seller_app/presentation/splash_screen/splash_screen.dart';
import 'package:ecommerce_seller_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:ecommerce_seller_app/presentation/icon_screen/icon_screen.dart';
import 'package:ecommerce_seller_app/presentation/icon_screen/binding/icon_binding.dart';
import 'package:ecommerce_seller_app/presentation/signin_tab_container_screen/signin_tab_container_screen.dart';
import 'package:ecommerce_seller_app/presentation/signin_tab_container_screen/binding/signin_tab_container_binding.dart';
import 'package:ecommerce_seller_app/presentation/home_settings_screen/home_settings_screen.dart';
import 'package:ecommerce_seller_app/presentation/home_settings_screen/binding/home_settings_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_screen/verification_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_screen/binding/verification_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_three_screen/verification_three_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_three_screen/binding/verification_three_binding.dart';
import 'package:ecommerce_seller_app/presentation/shop_details_screen/shop_details_screen.dart';
import 'package:ecommerce_seller_app/presentation/shop_details_screen/binding/shop_details_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_product_one_screen/add_product_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_product_one_screen/binding/add_product_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/search_product_screen/search_product_screen.dart';
import 'package:ecommerce_seller_app/presentation/search_product_screen/binding/search_product_binding.dart';
import 'package:ecommerce_seller_app/presentation/create_package_screen/create_package_screen.dart';
import 'package:ecommerce_seller_app/presentation/create_package_screen/binding/create_package_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_list_screen/product_list_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_list_screen/binding/product_list_binding.dart';
import 'package:ecommerce_seller_app/presentation/search_package_one_screen/search_package_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/search_package_one_screen/binding/search_package_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/search_package_container_screen/search_package_container_screen.dart';
import 'package:ecommerce_seller_app/presentation/search_package_container_screen/binding/search_package_container_binding.dart';
import 'package:ecommerce_seller_app/presentation/order_details_screen/order_details_screen.dart';
import 'package:ecommerce_seller_app/presentation/order_details_screen/binding/order_details_binding.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_queue_screen/delivery_in_queue_screen.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_queue_screen/binding/delivery_in_queue_binding.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_queue_one_screen/delivery_in_queue_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_queue_one_screen/binding/delivery_in_queue_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/package_details_three_screen/package_details_three_screen.dart';
import 'package:ecommerce_seller_app/presentation/package_details_three_screen/binding/package_details_three_binding.dart';
import 'package:ecommerce_seller_app/presentation/profile_edit_screen/profile_edit_screen.dart';
import 'package:ecommerce_seller_app/presentation/profile_edit_screen/binding/profile_edit_binding.dart';
import 'package:ecommerce_seller_app/presentation/profile_edit_one_screen/profile_edit_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/profile_edit_one_screen/binding/profile_edit_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/notification_screen/notification_screen.dart';
import 'package:ecommerce_seller_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:ecommerce_seller_app/presentation/message_screen/message_screen.dart';
import 'package:ecommerce_seller_app/presentation/message_screen/binding/message_binding.dart';
import 'package:ecommerce_seller_app/presentation/empty_inbox_screen/empty_inbox_screen.dart';
import 'package:ecommerce_seller_app/presentation/empty_inbox_screen/binding/empty_inbox_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_one_screen/verification_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_one_screen/binding/verification_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_two_screen/verification_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_two_screen/binding/verification_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/shop_details_one_tab_container_screen/shop_details_one_tab_container_screen.dart';
import 'package:ecommerce_seller_app/presentation/shop_details_one_tab_container_screen/binding/shop_details_one_tab_container_binding.dart';
import 'package:ecommerce_seller_app/presentation/inbox_screen/inbox_screen.dart';
import 'package:ecommerce_seller_app/presentation/inbox_screen/binding/inbox_binding.dart';
import 'package:ecommerce_seller_app/presentation/order_filter_screen/order_filter_screen.dart';
import 'package:ecommerce_seller_app/presentation/order_filter_screen/binding/order_filter_binding.dart';
import 'package:ecommerce_seller_app/presentation/date_filter_tab_container_screen/date_filter_tab_container_screen.dart';
import 'package:ecommerce_seller_app/presentation/date_filter_tab_container_screen/binding/date_filter_tab_container_binding.dart';
import 'package:ecommerce_seller_app/presentation/category_screen/category_screen.dart';
import 'package:ecommerce_seller_app/presentation/category_screen/binding/category_binding.dart';
import 'package:ecommerce_seller_app/presentation/edit_product_screen/edit_product_screen.dart';
import 'package:ecommerce_seller_app/presentation/edit_product_screen/binding/edit_product_binding.dart';
import 'package:ecommerce_seller_app/presentation/category_one_screen/category_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/category_one_screen/binding/category_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/category_two_screen/category_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/category_two_screen/binding/category_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_one_screen/product_publish_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_one_screen/binding/product_publish_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_progress_screen/delivery_in_progress_screen.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_progress_screen/binding/delivery_in_progress_binding.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_progress_one_screen/delivery_in_progress_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_progress_one_screen/binding/delivery_in_progress_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/order_filter_one_screen/order_filter_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/order_filter_one_screen/binding/order_filter_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/package_details_screen/package_details_screen.dart';
import 'package:ecommerce_seller_app/presentation/package_details_screen/binding/package_details_binding.dart';
import 'package:ecommerce_seller_app/presentation/if_code_is_wrong_one_screen/if_code_is_wrong_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/if_code_is_wrong_one_screen/binding/if_code_is_wrong_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/if_code_is_wrong_screen/if_code_is_wrong_screen.dart';
import 'package:ecommerce_seller_app/presentation/if_code_is_wrong_screen/binding/if_code_is_wrong_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_product_screen/add_product_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_product_screen/binding/add_product_binding.dart';
import 'package:ecommerce_seller_app/presentation/shop_details_two_tab_container_screen/shop_details_two_tab_container_screen.dart';
import 'package:ecommerce_seller_app/presentation/shop_details_two_tab_container_screen/binding/shop_details_two_tab_container_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_screen/product_publish_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_screen/binding/product_publish_binding.dart';
import 'package:ecommerce_seller_app/presentation/category_three_screen/category_three_screen.dart';
import 'package:ecommerce_seller_app/presentation/category_three_screen/binding/category_three_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_card_blank_screen/add_card_blank_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_card_blank_screen/binding/add_card_blank_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_card_blank_one_screen/add_card_blank_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_card_blank_one_screen/binding/add_card_blank_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/card_list_screen/card_list_screen.dart';
import 'package:ecommerce_seller_app/presentation/card_list_screen/binding/card_list_binding.dart';
import 'package:ecommerce_seller_app/presentation/card_edit_or_delete_screen/card_edit_or_delete_screen.dart';
import 'package:ecommerce_seller_app/presentation/card_edit_or_delete_screen/binding/card_edit_or_delete_binding.dart';
import 'package:ecommerce_seller_app/presentation/edit_product_one_screen/edit_product_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/edit_product_one_screen/binding/edit_product_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/category_four_screen/category_four_screen.dart';
import 'package:ecommerce_seller_app/presentation/category_four_screen/binding/category_four_binding.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_progress_two_screen/delivery_in_progress_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/delivery_in_progress_two_screen/binding/delivery_in_progress_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_four_screen/verification_four_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_four_screen/binding/verification_four_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_seven_screen/verification_seven_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_seven_screen/binding/verification_seven_binding.dart';
import 'package:ecommerce_seller_app/presentation/delivery_completed_screen/delivery_completed_screen.dart';
import 'package:ecommerce_seller_app/presentation/delivery_completed_screen/binding/delivery_completed_binding.dart';
import 'package:ecommerce_seller_app/presentation/package_details_four_screen/package_details_four_screen.dart';
import 'package:ecommerce_seller_app/presentation/package_details_four_screen/binding/package_details_four_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_six_screen/verification_six_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_six_screen/binding/verification_six_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_upload_success_one_screen/product_upload_success_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_upload_success_one_screen/binding/product_upload_success_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_product_two_screen/add_product_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_product_two_screen/binding/add_product_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_policy_two_screen/add_policy_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_policy_two_screen/binding/add_policy_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/successfull_one_screen/successfull_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/successfull_one_screen/binding/successfull_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/successfull_screen/successfull_screen.dart';
import 'package:ecommerce_seller_app/presentation/successfull_screen/binding/successfull_binding.dart';
import 'package:ecommerce_seller_app/presentation/verification_five_screen/verification_five_screen.dart';
import 'package:ecommerce_seller_app/presentation/verification_five_screen/binding/verification_five_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_upload_success_screen/product_upload_success_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_upload_success_screen/binding/product_upload_success_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_three_screen/product_publish_three_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_three_screen/binding/product_publish_three_binding.dart';
import 'package:ecommerce_seller_app/presentation/added_policy_screen/added_policy_screen.dart';
import 'package:ecommerce_seller_app/presentation/added_policy_screen/binding/added_policy_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_two_screen/product_publish_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_publish_two_screen/binding/product_publish_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_policy_screen/add_policy_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_policy_screen/binding/add_policy_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_delivery_option_one_screen/add_delivery_option_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_delivery_option_one_screen/binding/add_delivery_option_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_policy_one_screen/add_policy_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_policy_one_screen/binding/add_policy_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/fa_screen/fa_screen.dart';
import 'package:ecommerce_seller_app/presentation/fa_screen/binding/fa_binding.dart';
import 'package:ecommerce_seller_app/presentation/added_policy_two_screen/added_policy_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/added_policy_two_screen/binding/added_policy_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/added_policy_one_screen/added_policy_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/added_policy_one_screen/binding/added_policy_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/added_delivery_option_two_screen/added_delivery_option_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/added_delivery_option_two_screen/binding/added_delivery_option_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/fa_two_screen/fa_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/fa_two_screen/binding/fa_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_delivery_option_screen/add_delivery_option_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_delivery_option_screen/binding/add_delivery_option_binding.dart';
import 'package:ecommerce_seller_app/presentation/add_delivery_option_two_screen/add_delivery_option_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/add_delivery_option_two_screen/binding/add_delivery_option_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_one_screen/product_updated_success_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_one_screen/binding/product_updated_success_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/fa_one_screen/fa_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/fa_one_screen/binding/fa_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/added_delivery_option_one_screen/added_delivery_option_one_screen.dart';
import 'package:ecommerce_seller_app/presentation/added_delivery_option_one_screen/binding/added_delivery_option_one_binding.dart';
import 'package:ecommerce_seller_app/presentation/added_delivery_option_screen/added_delivery_option_screen.dart';
import 'package:ecommerce_seller_app/presentation/added_delivery_option_screen/binding/added_delivery_option_binding.dart';
import 'package:ecommerce_seller_app/presentation/shop_create_screen/shop_create_screen.dart';
import 'package:ecommerce_seller_app/presentation/shop_create_screen/binding/shop_create_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_screen/product_updated_success_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_screen/binding/product_updated_success_binding.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_two_screen/product_updated_success_two_screen.dart';
import 'package:ecommerce_seller_app/presentation/product_updated_success_two_screen/binding/product_updated_success_two_binding.dart';
import 'package:ecommerce_seller_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ecommerce_seller_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String iconScreen = '/icon_screen';

  static const String signupPage = '/signup_page';

  static const String signinPage = '/signin_page';

  static const String signinTabContainerScreen = '/signin_tab_container_screen';

  static const String homeSettingsScreen = '/home_settings_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationThreeScreen = '/verification_three_screen';

  static const String shopDetailsScreen = '/shop_details_screen';

  static const String addProductOneScreen = '/add_product_one_screen';

  static const String searchProductScreen = '/search_product_screen';

  static const String createPackageScreen = '/create_package_screen';

  static const String productListScreen = '/product_list_screen';

  static const String searchPackageOneScreen = '/search_package_one_screen';

  static const String searchPackagePage = '/search_package_page';

  static const String searchPackageContainerScreen =
      '/search_package_container_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String deliveryInQueueScreen = '/delivery_in_queue_screen';

  static const String deliveryInQueueOneScreen =
      '/delivery_in_queue_one_screen';

  static const String packageDetailsThreeScreen =
      '/package_details_three_screen';

  static const String profilePage = '/profile_page';

  static const String profileEditScreen = '/profile_edit_screen';

  static const String profileEditOneScreen = '/profile_edit_one_screen';

  static const String notificationScreen = '/notification_screen';

  static const String messageScreen = '/message_screen';

  static const String emptyInboxScreen = '/empty_inbox_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String verificationTwoScreen = '/verification_two_screen';

  static const String shopDetailsOnePage = '/shop_details_one_page';

  static const String shopDetailsOneTabContainerScreen =
      '/shop_details_one_tab_container_screen';

  static const String inboxScreen = '/inbox_screen';

  static const String orderFilterScreen = '/order_filter_screen';

  static const String dateFilterPage = '/date_filter_page';

  static const String dateFilterTabContainerScreen =
      '/date_filter_tab_container_screen';

  static const String categoryScreen = '/category_screen';

  static const String editProductScreen = '/edit_product_screen';

  static const String categoryOneScreen = '/category_one_screen';

  static const String categoryTwoScreen = '/category_two_screen';

  static const String productPublishOneScreen = '/product_publish_one_screen';

  static const String deliveryInProgressScreen = '/delivery_in_progress_screen';

  static const String deliveryInProgressOneScreen =
      '/delivery_in_progress_one_screen';

  static const String orderFilterOneScreen = '/order_filter_one_screen';

  static const String packageDetailsScreen = '/package_details_screen';

  static const String ifCodeIsWrongOneScreen = '/if_code_is_wrong_one_screen';

  static const String ifCodeIsWrongScreen = '/if_code_is_wrong_screen';

  static const String addProductScreen = '/add_product_screen';

  static const String shopDetailsTwoPage = '/shop_details_two_page';

  static const String shopDetailsTwoTabContainerScreen =
      '/shop_details_two_tab_container_screen';

  static const String productPublishScreen = '/product_publish_screen';

  static const String categoryThreeScreen = '/category_three_screen';

  static const String addCardBlankScreen = '/add_card_blank_screen';

  static const String addCardBlankOneScreen = '/add_card_blank_one_screen';

  static const String cardListScreen = '/card_list_screen';

  static const String cardEditOrDeleteScreen = '/card_edit_or_delete_screen';

  static const String dateFilterOnePage = '/date_filter_one_page';

  static const String editProductOneScreen = '/edit_product_one_screen';

  static const String categoryFourScreen = '/category_four_screen';

  static const String deliveryInProgressTwoScreen =
      '/delivery_in_progress_two_screen';

  static const String verificationFourScreen = '/verification_four_screen';

  static const String verificationSevenScreen = '/verification_seven_screen';

  static const String deliveryCompletedScreen = '/delivery_completed_screen';

  static const String packageDetailsFourScreen = '/package_details_four_screen';

  static const String verificationSixScreen = '/verification_six_screen';

  static const String productUploadSuccessOneScreen =
      '/product_upload_success_one_screen';

  static const String addProductTwoScreen = '/add_product_two_screen';

  static const String addPolicyTwoScreen = '/add_policy_two_screen';

  static const String successfullOneScreen = '/successfull_one_screen';

  static const String successfullScreen = '/successfull_screen';

  static const String verificationFiveScreen = '/verification_five_screen';

  static const String productUploadSuccessScreen =
      '/product_upload_success_screen';

  static const String productPublishThreeScreen =
      '/product_publish_three_screen';

  static const String addedPolicyScreen = '/added_policy_screen';

  static const String productPublishTwoScreen = '/product_publish_two_screen';

  static const String shopDetailsFourPage = '/shop_details_four_page';

  static const String addPolicyScreen = '/add_policy_screen';

  static const String addDeliveryOptionOneScreen =
      '/add_delivery_option_one_screen';

  static const String addPolicyOneScreen = '/add_policy_one_screen';

  static const String faScreen = '/fa_screen';

  static const String addedPolicyTwoScreen = '/added_policy_two_screen';

  static const String addedPolicyOneScreen = '/added_policy_one_screen';

  static const String addedDeliveryOptionTwoScreen =
      '/added_delivery_option_two_screen';

  static const String faTwoScreen = '/fa_two_screen';

  static const String addDeliveryOptionScreen = '/add_delivery_option_screen';

  static const String addDeliveryOptionTwoScreen =
      '/add_delivery_option_two_screen';

  static const String productUpdatedSuccessOneScreen =
      '/product_updated_success_one_screen';

  static const String faOneScreen = '/fa_one_screen';

  static const String addedDeliveryOptionOneScreen =
      '/added_delivery_option_one_screen';

  static const String shopDetailsThreePage = '/shop_details_three_page';

  static const String addedDeliveryOptionScreen =
      '/added_delivery_option_screen';

  static const String shopCreateScreen = '/shop_create_screen';

  static const String productUpdatedSuccessScreen =
      '/product_updated_success_screen';

  static const String productUpdatedSuccessTwoScreen =
      '/product_updated_success_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: iconScreen,
      page: () => IconScreen(),
      bindings: [
        IconBinding(),
      ],
    ),
    GetPage(
      name: signinTabContainerScreen,
      page: () => SigninTabContainerScreen(),
      bindings: [
        SigninTabContainerBinding(),
      ],
    ),
    GetPage(
      name: homeSettingsScreen,
      page: () => HomeSettingsScreen(),
      bindings: [
        HomeSettingsBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: verificationThreeScreen,
      page: () => VerificationThreeScreen(),
      bindings: [
        VerificationThreeBinding(),
      ],
    ),
    GetPage(
      name: shopDetailsScreen,
      page: () => ShopDetailsScreen(),
      bindings: [
        ShopDetailsBinding(),
      ],
    ),
    GetPage(
      name: addProductOneScreen,
      page: () => AddProductOneScreen(),
      bindings: [
        AddProductOneBinding(),
      ],
    ),
    GetPage(
      name: searchProductScreen,
      page: () => SearchProductScreen(),
      bindings: [
        SearchProductBinding(),
      ],
    ),
    GetPage(
      name: createPackageScreen,
      page: () => CreatePackageScreen(),
      bindings: [
        CreatePackageBinding(),
      ],
    ),
    GetPage(
      name: productListScreen,
      page: () => ProductListScreen(),
      bindings: [
        ProductListBinding(),
      ],
    ),
    GetPage(
      name: searchPackageOneScreen,
      page: () => SearchPackageOneScreen(),
      bindings: [
        SearchPackageOneBinding(),
      ],
    ),
    GetPage(
      name: searchPackageContainerScreen,
      page: () => SearchPackageContainerScreen(),
      bindings: [
        SearchPackageContainerBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [
        OrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: deliveryInQueueScreen,
      page: () => DeliveryInQueueScreen(),
      bindings: [
        DeliveryInQueueBinding(),
      ],
    ),
    GetPage(
      name: deliveryInQueueOneScreen,
      page: () => DeliveryInQueueOneScreen(),
      bindings: [
        DeliveryInQueueOneBinding(),
      ],
    ),
    GetPage(
      name: packageDetailsThreeScreen,
      page: () => PackageDetailsThreeScreen(),
      bindings: [
        PackageDetailsThreeBinding(),
      ],
    ),
    GetPage(
      name: profileEditScreen,
      page: () => ProfileEditScreen(),
      bindings: [
        ProfileEditBinding(),
      ],
    ),
    GetPage(
      name: profileEditOneScreen,
      page: () => ProfileEditOneScreen(),
      bindings: [
        ProfileEditOneBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: messageScreen,
      page: () => MessageScreen(),
      bindings: [
        MessageBinding(),
      ],
    ),
    GetPage(
      name: emptyInboxScreen,
      page: () => EmptyInboxScreen(),
      bindings: [
        EmptyInboxBinding(),
      ],
    ),
    GetPage(
      name: verificationOneScreen,
      page: () => VerificationOneScreen(),
      bindings: [
        VerificationOneBinding(),
      ],
    ),
    GetPage(
      name: verificationTwoScreen,
      page: () => VerificationTwoScreen(),
      bindings: [
        VerificationTwoBinding(),
      ],
    ),
    GetPage(
      name: shopDetailsOneTabContainerScreen,
      page: () => ShopDetailsOneTabContainerScreen(),
      bindings: [
        ShopDetailsOneTabContainerBinding(),
      ],
    ),
    GetPage(
      name: inboxScreen,
      page: () => InboxScreen(),
      bindings: [
        InboxBinding(),
      ],
    ),
    GetPage(
      name: orderFilterScreen,
      page: () => OrderFilterScreen(),
      bindings: [
        OrderFilterBinding(),
      ],
    ),
    GetPage(
      name: dateFilterTabContainerScreen,
      page: () => DateFilterTabContainerScreen(),
      bindings: [
        DateFilterTabContainerBinding(),
      ],
    ),
    GetPage(
      name: categoryScreen,
      page: () => CategoryScreen(),
      bindings: [
        CategoryBinding(),
      ],
    ),
    GetPage(
      name: editProductScreen,
      page: () => EditProductScreen(),
      bindings: [
        EditProductBinding(),
      ],
    ),
    GetPage(
      name: categoryOneScreen,
      page: () => CategoryOneScreen(),
      bindings: [
        CategoryOneBinding(),
      ],
    ),
    GetPage(
      name: categoryTwoScreen,
      page: () => CategoryTwoScreen(),
      bindings: [
        CategoryTwoBinding(),
      ],
    ),
    GetPage(
      name: productPublishOneScreen,
      page: () => ProductPublishOneScreen(),
      bindings: [
        ProductPublishOneBinding(),
      ],
    ),
    GetPage(
      name: deliveryInProgressScreen,
      page: () => DeliveryInProgressScreen(),
      bindings: [
        DeliveryInProgressBinding(),
      ],
    ),
    GetPage(
      name: deliveryInProgressOneScreen,
      page: () => DeliveryInProgressOneScreen(),
      bindings: [
        DeliveryInProgressOneBinding(),
      ],
    ),
    GetPage(
      name: orderFilterOneScreen,
      page: () => OrderFilterOneScreen(),
      bindings: [
        OrderFilterOneBinding(),
      ],
    ),
    GetPage(
      name: packageDetailsScreen,
      page: () => PackageDetailsScreen(),
      bindings: [
        PackageDetailsBinding(),
      ],
    ),
    GetPage(
      name: ifCodeIsWrongOneScreen,
      page: () => IfCodeIsWrongOneScreen(),
      bindings: [
        IfCodeIsWrongOneBinding(),
      ],
    ),
    GetPage(
      name: ifCodeIsWrongScreen,
      page: () => IfCodeIsWrongScreen(),
      bindings: [
        IfCodeIsWrongBinding(),
      ],
    ),
    GetPage(
      name: addProductScreen,
      page: () => AddProductScreen(),
      bindings: [
        AddProductBinding(),
      ],
    ),
    GetPage(
      name: shopDetailsTwoTabContainerScreen,
      page: () => ShopDetailsTwoTabContainerScreen(),
      bindings: [
        ShopDetailsTwoTabContainerBinding(),
      ],
    ),
    GetPage(
      name: productPublishScreen,
      page: () => ProductPublishScreen(),
      bindings: [
        ProductPublishBinding(),
      ],
    ),
    GetPage(
      name: categoryThreeScreen,
      page: () => CategoryThreeScreen(),
      bindings: [
        CategoryThreeBinding(),
      ],
    ),
    GetPage(
      name: addCardBlankScreen,
      page: () => AddCardBlankScreen(),
      bindings: [
        AddCardBlankBinding(),
      ],
    ),
    GetPage(
      name: addCardBlankOneScreen,
      page: () => AddCardBlankOneScreen(),
      bindings: [
        AddCardBlankOneBinding(),
      ],
    ),
    GetPage(
      name: cardListScreen,
      page: () => CardListScreen(),
      bindings: [
        CardListBinding(),
      ],
    ),
    GetPage(
      name: cardEditOrDeleteScreen,
      page: () => CardEditOrDeleteScreen(),
      bindings: [
        CardEditOrDeleteBinding(),
      ],
    ),
    GetPage(
      name: editProductOneScreen,
      page: () => EditProductOneScreen(),
      bindings: [
        EditProductOneBinding(),
      ],
    ),
    GetPage(
      name: categoryFourScreen,
      page: () => CategoryFourScreen(),
      bindings: [
        CategoryFourBinding(),
      ],
    ),
    GetPage(
      name: deliveryInProgressTwoScreen,
      page: () => DeliveryInProgressTwoScreen(),
      bindings: [
        DeliveryInProgressTwoBinding(),
      ],
    ),
    GetPage(
      name: verificationFourScreen,
      page: () => VerificationFourScreen(),
      bindings: [
        VerificationFourBinding(),
      ],
    ),
    GetPage(
      name: verificationSevenScreen,
      page: () => VerificationSevenScreen(),
      bindings: [
        VerificationSevenBinding(),
      ],
    ),
    GetPage(
      name: deliveryCompletedScreen,
      page: () => DeliveryCompletedScreen(),
      bindings: [
        DeliveryCompletedBinding(),
      ],
    ),
    GetPage(
      name: packageDetailsFourScreen,
      page: () => PackageDetailsFourScreen(),
      bindings: [
        PackageDetailsFourBinding(),
      ],
    ),
    GetPage(
      name: verificationSixScreen,
      page: () => VerificationSixScreen(),
      bindings: [
        VerificationSixBinding(),
      ],
    ),
    GetPage(
      name: productUploadSuccessOneScreen,
      page: () => ProductUploadSuccessOneScreen(),
      bindings: [
        ProductUploadSuccessOneBinding(),
      ],
    ),
    GetPage(
      name: addProductTwoScreen,
      page: () => AddProductTwoScreen(),
      bindings: [
        AddProductTwoBinding(),
      ],
    ),
    GetPage(
      name: addPolicyTwoScreen,
      page: () => AddPolicyTwoScreen(),
      bindings: [
        AddPolicyTwoBinding(),
      ],
    ),
    GetPage(
      name: successfullOneScreen,
      page: () => SuccessfullOneScreen(),
      bindings: [
        SuccessfullOneBinding(),
      ],
    ),
    GetPage(
      name: successfullScreen,
      page: () => SuccessfullScreen(),
      bindings: [
        SuccessfullBinding(),
      ],
    ),
    GetPage(
      name: verificationFiveScreen,
      page: () => VerificationFiveScreen(),
      bindings: [
        VerificationFiveBinding(),
      ],
    ),
    GetPage(
      name: productUploadSuccessScreen,
      page: () => ProductUploadSuccessScreen(),
      bindings: [
        ProductUploadSuccessBinding(),
      ],
    ),
    GetPage(
      name: productPublishThreeScreen,
      page: () => ProductPublishThreeScreen(),
      bindings: [
        ProductPublishThreeBinding(),
      ],
    ),
    GetPage(
      name: addedPolicyScreen,
      page: () => AddedPolicyScreen(),
      bindings: [
        AddedPolicyBinding(),
      ],
    ),
    GetPage(
      name: productPublishTwoScreen,
      page: () => ProductPublishTwoScreen(),
      bindings: [
        ProductPublishTwoBinding(),
      ],
    ),
    GetPage(
      name: addPolicyScreen,
      page: () => AddPolicyScreen(),
      bindings: [
        AddPolicyBinding(),
      ],
    ),
    GetPage(
      name: addDeliveryOptionOneScreen,
      page: () => AddDeliveryOptionOneScreen(),
      bindings: [
        AddDeliveryOptionOneBinding(),
      ],
    ),
    GetPage(
      name: addPolicyOneScreen,
      page: () => AddPolicyOneScreen(),
      bindings: [
        AddPolicyOneBinding(),
      ],
    ),
    GetPage(
      name: faScreen,
      page: () => FaScreen(),
      bindings: [
        FaBinding(),
      ],
    ),
    GetPage(
      name: addedPolicyTwoScreen,
      page: () => AddedPolicyTwoScreen(),
      bindings: [
        AddedPolicyTwoBinding(),
      ],
    ),
    GetPage(
      name: addedPolicyOneScreen,
      page: () => AddedPolicyOneScreen(),
      bindings: [
        AddedPolicyOneBinding(),
      ],
    ),
    GetPage(
      name: addedDeliveryOptionTwoScreen,
      page: () => AddedDeliveryOptionTwoScreen(),
      bindings: [
        AddedDeliveryOptionTwoBinding(),
      ],
    ),
    GetPage(
      name: faTwoScreen,
      page: () => FaTwoScreen(),
      bindings: [
        FaTwoBinding(),
      ],
    ),
    GetPage(
      name: addDeliveryOptionScreen,
      page: () => AddDeliveryOptionScreen(),
      bindings: [
        AddDeliveryOptionBinding(),
      ],
    ),
    GetPage(
      name: addDeliveryOptionTwoScreen,
      page: () => AddDeliveryOptionTwoScreen(),
      bindings: [
        AddDeliveryOptionTwoBinding(),
      ],
    ),
    GetPage(
      name: productUpdatedSuccessOneScreen,
      page: () => ProductUpdatedSuccessOneScreen(),
      bindings: [
        ProductUpdatedSuccessOneBinding(),
      ],
    ),
    GetPage(
      name: faOneScreen,
      page: () => FaOneScreen(),
      bindings: [
        FaOneBinding(),
      ],
    ),
    GetPage(
      name: addedDeliveryOptionOneScreen,
      page: () => AddedDeliveryOptionOneScreen(),
      bindings: [
        AddedDeliveryOptionOneBinding(),
      ],
    ),
    GetPage(
      name: addedDeliveryOptionScreen,
      page: () => AddedDeliveryOptionScreen(),
      bindings: [
        AddedDeliveryOptionBinding(),
      ],
    ),
    GetPage(
      name: shopCreateScreen,
      page: () => ShopCreateScreen(),
      bindings: [
        ShopCreateBinding(),
      ],
    ),
    GetPage(
      name: productUpdatedSuccessScreen,
      page: () => ProductUpdatedSuccessScreen(),
      bindings: [
        ProductUpdatedSuccessBinding(),
      ],
    ),
    GetPage(
      name: productUpdatedSuccessTwoScreen,
      page: () => ProductUpdatedSuccessTwoScreen(),
      bindings: [
        ProductUpdatedSuccessTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
