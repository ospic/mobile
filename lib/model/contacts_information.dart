import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contacts_information.g.dart';

abstract class ContactsInformation implements Built<ContactsInformation, ContactsInformationBuilder> {
  @nullable int get id;
  @nullable bool get isReachable;
  @nullable String get email_address;
  @nullable String get zipcode;
  @nullable String get city;
  @nullable String get state;
  @nullable String get physical_address;
  @nullable String get home_phone;
  @nullable String get work_phone;
  @nullable int get patient;

  ContactsInformation._();

  factory ContactsInformation([updates(ContactsInformationBuilder b)]) = _$ContactsInformation;

}