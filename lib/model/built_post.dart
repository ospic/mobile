import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_post.g.dart';

abstract class BuiltPost implements Built<BuiltPost, BuiltPostBuilder> {
  // IDs are set in the back-end.
  // In a POST request, BuiltPost's ID will be null.
  // Only BuiltPosts obtained through a GET request will have an ID.
  @nullable int get id;
  @nullable String get createdDate;
  @nullable String get createdBy;
  @nullable String get lastModifiedDate;
  @nullable String get lastModifiedBy;
  @nullable String get name;
  @nullable String get guardianName;
  @nullable String get phone;
  @nullable String get address;
  @nullable String get emailAddress;
  @nullable String get height;
  @nullable String get weight;
  @nullable String get bloodPressure;
  @nullable int get age;
  @nullable bool get isAdmitted;
  @nullable String get patientPhoto;
  @nullable String get bloodGroup;
  @nullable String get note;
  @nullable String get symptoms;
  @nullable String get marriageStatus;
  @nullable String get gender;
  @nullable bool get isActive;
  @nullable bool get hasSelfServiceUserAccount;
  @nullable String get contactsInformation;

  BuiltPost._();

  factory BuiltPost([updates(BuiltPostBuilder b)]) = _$BuiltPost;

  static Serializer<BuiltPost> get serializer => _$builtPostSerializer;
}