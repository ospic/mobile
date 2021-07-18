import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/patient.dart';
import 'package:mobile/model/staff.dart';

part 'consultation_payload.g.dart';
abstract class ConsultationPayload implements Built<ConsultationPayload, ConsultationPayloadBuilder>{
  int? get id;
  String ? get fromdate;
  String ? get todate;
  bool? get  isActive;
  bool? get  isAdmitted;
  @BuiltValueField(wireName: "patient")
  Patient? get patient;
  @BuiltValueField(wireName: "staff")
  Staff? get staff;
  
  ConsultationPayload._();

  factory ConsultationPayload([updates(ConsultationPayloadBuilder b)]) = _$ConsultationPayload ;
  static Serializer<ConsultationPayload> get serializer => _$consultationPayloadSerializer;
}