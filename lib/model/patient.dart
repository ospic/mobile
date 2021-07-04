import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/contacts_information.dart';

part 'patient.g.dart';

abstract class Patient implements Built<Patient, PatientBuilder> {
  int ? get id;
  String ? get createdDate;
  String ? get createdBy;
  String ? get lastModifiedDate;
  String ? get lastModifiedBy;
  String ? get name;
  String ? get guardianName;
  String ? get phone;
  String ? get address;
  String ? get emailAddress;
  String ? get height;
  String ? get weight;
  String ? get bloodPressure;
  int ? get age;
  bool ? get isAdmitted;
  String ? get patientPhoto;
  String ? get bloodGroup;
  String ? get note;
  String ? get allergies;
  String ? get marriageStatus;
  String ? get gender;
  bool ? get isActive;
  bool ? get hasSelfServiceUserAccount;
  @BuiltValueField(wireName: 'contactsInformation')
  ContactsInformation ? get contactsInformation;

  Patient._();

  factory Patient([updates(PatientBuilder b)]) = _$Patient;
  factory Patient.from(id, name) => new _$Patient._(
    id:id,
    name:name
  );


  static Serializer<Patient> get serializer => _$patientSerializer;
}