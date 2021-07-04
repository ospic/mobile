import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/department.dart';
part 'staff.g.dart';
abstract class Staff implements Built<Staff, StaffBuilder>{
  int ? get id;
  String ? get username;
  String ? get fullName;
  String ? get contacts;
  String ? get imageUrl;
  String ? get level;
  String ? get email;
  bool ? get isActive;
  bool ? get isAvailable;
  @BuiltValueField(wireName: "department")
  Department get department;

  Staff._();
  factory Staff([updates(StaffBuilder b)]) = _$Staff ;
  static Serializer<Staff> get serializer => _$staffSerializer;
}