import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_post.g.dart';

 abstract class AuthPost  implements Built<AuthPost, AuthPostBuilder>  {
  String ? get username;
  String ? get  password;
  int ? get tenantId;
  AuthPost._();
  factory AuthPost([updates(AuthPostBuilder b)]) = _$AuthPost;
  factory AuthPost.from(String username, String password) => new _$AuthPost._(
   username: username,
   password: password,
   tenantId:   200,
  );

  static Serializer<AuthPost> get serializer => _$authPostSerializer;



}
