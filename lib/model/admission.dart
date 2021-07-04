import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admission.g.dart';
abstract class Admission implements Built<Admission, AdmissionBuilder>{
  int get id;
   String ? get startDate;
   String ? get endDate;
   bool ? get isActive;
   int ? get wardId;
   int ? get bedId;
   String ? get bedIdentifier;
   String ? get wardName;
   int ? get serviceId;

  Admission._();
  factory Admission([updates(AdmissionBuilder b)]) = _$Admission;
  static Serializer<Admission> get serializer => _$admissionSerializer;
}