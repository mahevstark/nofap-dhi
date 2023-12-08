import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.userName, this.timeAgo, this.description, this.likesImage, this.likesCount, this.id, }) { userName = userName  ?? "Jessy_29";timeAgo = timeAgo  ?? "10s ago";description = description  ?? "Nullam turpis leo, accumsan in tincidunt eu, efficitur in ligula. Integer elementum elit justo, eu finibus nunc cursus ut. ";likesImage = likesImage  ?? ImageConstant.imgHeart;likesCount = likesCount  ?? "2.4K";id = id  ?? ""; }

String? userName;

String? timeAgo;

String? description;

String? likesImage;

String? likesCount;

String? id;

 }
