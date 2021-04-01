import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/patient.dart';
import 'package:mobile/model/staff.dart';

part 'consultation_payload.g.dart';
abstract class ConsultationPayload implements Built<ConsultationPayload, ConsultationPayloadBuilder>{
  @nullable int get id;
  @nullable String get fromdate;
  @nullable String get todate;
  @nullable bool get  isActive;
  @nullable bool get  isAdmitted;
  @BuiltValueField(wireName: "patient")
  Patient get patient;
  @BuiltValueField(wireName: "staff")
  @nullable Staff get staff;
  
  ConsultationPayload._();

  factory ConsultationPayload([updates(ConsultationPayloadBuilder b)]) = _$ConsultationPayload ;
  static Serializer<ConsultationPayload> get serializer => _$consultationPayloadSerializer;
}