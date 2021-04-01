import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'contacts_information.g.dart';

abstract class ContactsInformation implements Built<ContactsInformation, ContactsInformationBuilder> {
  @nullable int get id;
  @nullable bool get isReachable;
  @BuiltValueField(wireName: 'email_address')
  @nullable String get emailAddress;
  @nullable String get zipcode;
  @nullable String get city;
  @nullable String get state;
  @BuiltValueField(wireName: 'physical_address')
  @nullable String get physicalAddress;
  @BuiltValueField(wireName: 'home_phone')
  @nullable String get homePhone;
  @BuiltValueField(wireName: 'work_phone')
  @nullable String get workPhone;
  @nullable int get patient;

  ContactsInformation._();
  factory ContactsInformation([updates(ContactsInformationBuilder b)]) = _$ContactsInformation;
  static Serializer<ContactsInformation> get serializer => _$contactsInformationSerializer;

}