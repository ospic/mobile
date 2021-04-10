import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/contacts_information.dart';

part 'patient.g.dart';

abstract class Patient implements Built<Patient, PatientBuilder> {
  // IDs are set in the back-end.
  // In a POST request, Patient's ID will be null.
  // Only Patients obtained through a GET request will have an ID.
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
  @nullable String get allergies;
  @nullable String get marriageStatus;
  @nullable String get gender;
  @nullable bool get isActive;
  @nullable bool get hasSelfServiceUserAccount;
  @BuiltValueField(wireName: 'contactsInformation')
  @nullable ContactsInformation get contactsInformation;

  Patient._();

  factory Patient([updates(PatientBuilder b)]) = _$Patient;

  static Serializer<Patient> get serializer => _$patientSerializer;
}