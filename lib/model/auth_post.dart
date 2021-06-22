import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_post.g.dart';

 abstract class AuthPost  implements Built<AuthPost, AuthPostBuilder>  {

  @nullable
  String get username;
  @nullable
  String get  password;
  AuthPost._();
  factory AuthPost([updates(AuthPostBuilder b)]) = _$AuthPost;
  factory AuthPost.from(String username, String password) => new _$AuthPost._(
   username: username,
   password: password
  );

  static Serializer<AuthPost> get serializer => _$authPostSerializer;



}
