import '../../../core/app_export.dart';/// This class is used in the [subscriptionlist_item_widget] screen.
class SubscriptionlistItemModel {SubscriptionlistItemModel({this.freeTrailText, this.threeDaysFreeTrailText, this.id, }) { freeTrailText = freeTrailText  ?? "Free Trail";threeDaysFreeTrailText = threeDaysFreeTrailText  ?? "3 days free trail";id = id  ?? ""; }

String? freeTrailText;

String? threeDaysFreeTrailText;

String? id;

 }
