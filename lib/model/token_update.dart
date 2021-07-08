import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'token_update.g.dart';
abstract class TokenUpdate implements Built<TokenUpdate, TokenUpdateBuilder>{
  String ? get token;
  TokenUpdate._();
  factory TokenUpdate([updates(TokenUpdateBuilder b)]) = _$TokenUpdate ;
  factory TokenUpdate.from(String token) => new _$TokenUpdate._(
    token: token
  );
  static Serializer<TokenUpdate> get serializer => _$tokenUpdateSerializer;
}