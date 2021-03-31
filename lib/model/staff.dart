import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/department.dart';
part 'staff.g.dart';
abstract class Staff implements Built<Staff, StaffBuilder>{
  @nullable int get id;
  @nullable String get username;
  @nullable String get fullName;
  @nullable String get contacts;
  @nullable String get imageUrl;
  @nullable String get level;
  @nullable String get email;
  @nullable bool get isActive;
  @nullable bool get isAvailable;
  @BuiltValueField(wireName: "department")
  Department get department;

  Staff._();
  factory Staff([updates(StaffBuilder b)]) = _$Staff ;
  static Serializer<Staff> get serializer => _$staffSerializer;
}