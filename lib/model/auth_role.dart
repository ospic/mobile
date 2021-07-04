import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_role.g.dart';
abstract class AuthRole implements Built<AuthRole, AuthRoleBuilder> {
  int? get id;
  String? get name;
  String? get description;
  bool? get disabled;

  AuthRole._();
  factory AuthRole([updates(AuthRoleBuilder b)]) = _$AuthRole;

  static Serializer<AuthRole> get serializer => _$authRoleSerializer;


}