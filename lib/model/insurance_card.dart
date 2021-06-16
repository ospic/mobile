import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'insurance.dart';

part 'insurance_card.g.dart';
abstract class InsuranceCard implements Built<InsuranceCard, InsuranceCardBuilder> {
  @nullable
  int get id;
  @nullable String get patientName;
  @nullable String get membershipNumber;
  @nullable String get sex;
  @nullable String get voteNo;
  @nullable String get dateOfBirth;
  @nullable String get issuedDate;
  @nullable String get expireDate;
  @nullable String get codeNo;
  @nullable bool get isActive;
  @BuiltValueField(wireName: 'insurance')
  @nullable Insurance get insurance;

  InsuranceCard._();
  factory InsuranceCard([updates(InsuranceCardBuilder b)]) = _$InsuranceCard;

  static Serializer<InsuranceCard> get serializer => _$insuranceCardSerializer;


}