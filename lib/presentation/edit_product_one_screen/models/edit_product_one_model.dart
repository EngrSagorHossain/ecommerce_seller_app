import '../../../core/app_export.dart';import 'userprofilelist_item_model.dart';/// This class defines the variables used in the [edit_product_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditProductOneModel {Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([UserprofilelistItemModel(chanachur: "Chanachur".obs),UserprofilelistItemModel(chanachur: "Biscuits".obs),UserprofilelistItemModel(chanachur: "Chips".obs),UserprofilelistItemModel(chanachur: "Cake".obs),UserprofilelistItemModel(chanachur: "Ice cream".obs)]);

 }
