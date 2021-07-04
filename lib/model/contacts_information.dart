import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'contacts_information.g.dart';

abstract class ContactsInformation implements Built<ContactsInformation, ContactsInformationBuilder> {
  int? get id;
  bool? get isReachable;
  @BuiltValueField(wireName: 'email_address')
  String ? get emailAddress;
  String ? get zipcode;
  String ? get city;
  String ? get state;
  @BuiltValueField(wireName: 'physical_address')
  String ? get physicalAddress;
  @BuiltValueField(wireName: 'home_phone')
  String ? get homePhone;
  @BuiltValueField(wireName: 'work_phone')
  String ? get workPhone;
  int? get patient;

  ContactsInformation._();
  factory ContactsInformation([updates(ContactsInformationBuilder b)]) = _$ContactsInformation;
  static Serializer<ContactsInformation> get serializer => _$contactsInformationSerializer;

}