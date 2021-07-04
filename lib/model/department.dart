import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'department.g.dart';

abstract class Department implements Built<Department, DepartmentBuilder>{
  int get id;
  String ? get name;
  String ? get descriptions;
  String ? get openingDate;

  Department._();
  factory Department([updates(DepartmentBuilder b)]) = _$Department ;
  static Serializer<Department> get serializer => _$departmentSerializer;
}