
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'insurance.g.dart';
abstract class Insurance implements Built<Insurance, InsuranceBuilder> {
  @nullable
  int get id;
  @nullable String get name;
  @nullable String get poBox;
  @nullable String get location;
  @nullable String get telephoneNo;
  @nullable String get emailAddress;

  Insurance._();
  factory Insurance([updates(InsuranceBuilder b)]) = _$Insurance;

  static Serializer<Insurance> get serializer => _$insuranceSerializer;


}