import '../../../core/app_export.dart';/// This class is used in the [moviedetails_item_widget] screen.
class MoviedetailsItemModel {MoviedetailsItemModel({this.movieImage, this.movieTitle, this.movieDescription, this.movieRating, this.movieTime, this.id, }) { movieImage = movieImage  ?? Rx(ImageConstant.imgEllipse60x60);movieTitle = movieTitle  ?? Rx("Harry Potter Film");movieDescription = movieDescription  ?? Rx("What is the size the......");movieRating = movieRating  ?? Rx("1");movieTime = movieTime  ?? Rx("5:54 PM");id = id  ?? Rx(""); }

Rx<String>? movieImage;

Rx<String>? movieTitle;

Rx<String>? movieDescription;

Rx<String>? movieRating;

Rx<String>? movieTime;

Rx<String>? id;

 }
