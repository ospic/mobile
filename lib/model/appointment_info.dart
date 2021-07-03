import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'appointment_info.g.dart';
abstract class AppointmentInfo implements Built<AppointmentInfo, AppointmentInfoBuilder>{
  @nullable int get id;
  @nullable int get patientId;
  @nullable int get physicianId;
  @nullable String get appointmentDate;
  @nullable String get status;
  @nullable String get job;
  @nullable String get trigger;
  AppointmentInfo._();
  factory AppointmentInfo([updates(AppointmentInfoBuilder b)]) = _$AppointmentInfo;
  static Serializer<AppointmentInfo> get serializer => _$appointmentInfoSerializer;
}