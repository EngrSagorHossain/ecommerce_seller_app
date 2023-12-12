import '../../../core/app_export.dart';import 'moviedetails_item_model.dart';/// This class defines the variables used in the [message_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel {Rx<List<MoviedetailsItemModel>> moviedetailsItemList = Rx([MoviedetailsItemModel(movieImage:ImageConstant.imgEllipse60x60.obs,movieTitle: "Harry Potter Film".obs,movieDescription: "What is the size the......".obs,movieRating: "1".obs,movieTime: "5:54 PM".obs)]);

 }
