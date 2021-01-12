import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/auth_role.dart';
part 'auth_response.g.dart';
abstract class AuthResponse implements Built<AuthResponse, AuthResponseBuilder> {
  String get username;
  int get userId;
  String get base64EncodedAuthenticationKey;
  bool get authenticated;
  int get officeId;
  @nullable
  BuiltList<AuthRole> get roles;
  String get officeName;
  @nullable
  //List<String> get permissions;
  bool get shouldRenewPassword;
  bool get isTwoFactorAuthenticationRequired;

  AuthResponse._();
  factory AuthResponse([updates(AuthResponseBuilder b)]) = _$AuthResponse;

  static Serializer<AuthResponse> get serializer => _$authResponseSerializer;
}