
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_update.g.dart';
abstract class PasswordUpdate implements Built<PasswordUpdate, PasswordUpdateBuilder> {

  String ? get oldPassword;
  String ? get newPassword;

  PasswordUpdate._();
  factory PasswordUpdate([updates(PasswordUpdateBuilder b)]) = _$PasswordUpdate;
  factory PasswordUpdate.from(String oldPassword, String newPassword) => _$PasswordUpdate._(
    oldPassword:oldPassword,
    newPassword :newPassword
  );
  static Serializer<PasswordUpdate> get serializer => _$passwordUpdateSerializer;


}