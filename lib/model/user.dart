import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/role.dart';

part 'user.g.dart';

abstract class User  implements Built<User, UserBuilder>  {

  @nullable int get id;
  @nullable String get  username;
  @nullable String get email;
  @nullable bool get isStaff;
  @nullable BuiltList<Role>  get roles;

  User._();
  factory User([updates(UserBuilder b)]) = _$User;

  static Serializer<User> get serializer => _$userSerializer;

}