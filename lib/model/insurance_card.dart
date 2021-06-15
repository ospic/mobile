import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'insurance.dart';

part 'insurance_card.g.dart';
abstract class InsuranceCard implements Built<InsuranceCard, InsuranceCardBuilder> {
  @nullable
  int get id;
  String get patientName;
  String get membershipNumber;
  String get sex;
  String get voteNo;
  String get dateOfBirth;
  String get issuedDate;
  String get expireDate;
  String get codeNo;
  bool get isActive;
  Insurance get insurance;

  InsuranceCard._();
  factory InsuranceCard([updates(InsuranceCardBuilder b)]) = _$InsuranceCard;

  static Serializer<InsuranceCard> get serializer => _$insuranceCardSerializer;


}