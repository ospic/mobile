import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_model.g.dart';

abstract class NotificationModel implements Built<NotificationModel, NotificationModelBuilder> {
  // IDs are set in the back-end.
  // In a POST request, NotificationModel's ID will be null.
  // Only NotificationModels obtained through a GET request will have an ID.
  @nullable
  int get groupid;
  int get requestId;
  String get description;
 

  NotificationModel._();

  factory NotificationModel([updates(NotificationModelBuilder b)]) = _$NotificationModel;

  static Serializer<NotificationModel> get serializer => _$notificationModelSerializer;
}