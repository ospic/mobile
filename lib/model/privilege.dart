import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'privilege.g.dart';

abstract class Privilege  implements Built<Privilege, PrivilegeBuilder>  {
  int? get id;
  String? get  name;
  BuiltList<String>  get roles;

  Privilege._();
  factory Privilege([updates(PrivilegeBuilder b)]) = _$Privilege;

  static Serializer<Privilege> get serializer => _$privilegeSerializer;

}