import '../../../core/app_export.dart';/// This class is used in the [listuserprofile_item_widget] screen.
class ListuserprofileItemModel {ListuserprofileItemModel({this.username, this.timeAgo, this.description, this.id, }) { username = username  ?? "Jessy_29";timeAgo = timeAgo  ?? "10s ago";description = description  ?? "Nullam turpis leo, accumsan in tincidunt eu, efficitur in ligula. Integer elementum elit justo, eu finibus nunc cursus ut. ";id = id  ?? ""; }

String? username;

String? timeAgo;

String? description;

String? id;

 }
