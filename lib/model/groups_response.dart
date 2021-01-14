import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'groups_response.g.dart';

abstract class GroupsResponse
    implements Built<GroupsResponse, GroupsResponseBuilder> {
  String get username;

  String get password;

  int get groupId;

  String get groupAcct;

  String get groupName;

  String get groupType;

  int get totalMembers;

  int get sharePrice;

  GroupsResponse._();

  factory GroupsResponse([updates(GroupsResponseBuilder b)]) = _$GroupsResponse;

  static Serializer<GroupsResponse> get serializer =>
      _$groupsResponseSerializer;
}
