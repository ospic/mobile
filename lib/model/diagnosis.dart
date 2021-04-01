import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'diagnosis.g.dart';
abstract class Diagnosis implements Built<Diagnosis, DiagnosisBuilder>{
  int get id;
  @nullable String get symptoms;
  @nullable String get date;

  Diagnosis._();
  factory Diagnosis([updates(DiagnosisBuilder b)]) = _$Diagnosis;
  static Serializer<Diagnosis> get serializer => _$diagnosisSerializer;
}