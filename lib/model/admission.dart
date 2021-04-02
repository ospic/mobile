import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admission.g.dart';
abstract class Admission implements Built<Admission, AdmissionBuilder>{
  int get id;
  @nullable String get startDate;
  @nullable String get endDate;
  @nullable bool get isActive;
  @nullable int get wardId;
  @nullable int get bedId;
  @nullable String get bedIdentifier;
  @nullable String get wardName;
  @nullable int get serviceId;

  Admission._();
  factory Admission([updates(AdmissionBuilder b)]) = _$Admission;
  static Serializer<Admission> get serializer => _$admissionSerializer;
}