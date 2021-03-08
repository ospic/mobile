import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_response.g.dart';

abstract class AuthResponse implements Built<AuthResponse, AuthResponseBuilder> {
  int get id;
  String get email;

  @nullable
  String get username;

  String get accessToken;
  
  @nullable
  BuiltList<String> get permissions;


  AuthResponse._();

  factory AuthResponse([updates(AuthResponseBuilder b)]) = _$AuthResponse;

  static Serializer<AuthResponse> get serializer => _$authResponseSerializer;
}
