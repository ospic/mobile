import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/privilege.dart';

part 'role.g.dart';

abstract class Role  implements Built<Role, RoleBuilder>  {
  int ? get id;
  String ? get  name;
  BuiltList<Privilege>  get privileges;

  Role._();
  factory Role([updates(RoleBuilder b)]) = _$Role;

  static Serializer<Role> get serializer => _$roleSerializer;

}