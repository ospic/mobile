import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_response.g.dart';

abstract class AuthResponse
    implements Built<AuthResponse, AuthResponseBuilder> {
  String get username;

  int get id;

  String get accessToken;

  String get tokenType;

  String get email;

  @nullable
  BuiltList<String> get permissions;

  @nullable
  BuiltList<String>  get roles;

  AuthResponse._();

  factory AuthResponse([updates(AuthResponseBuilder b)]) = _$AuthResponse;

  static Serializer<AuthResponse> get serializer => _$authResponseSerializer;
}
