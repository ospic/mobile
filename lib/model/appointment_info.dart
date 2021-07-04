import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'appointment_info.g.dart';
abstract class AppointmentInfo implements Built<AppointmentInfo, AppointmentInfoBuilder>{
   int ? get id;
   int ? get patientId;
   int ? get physicianId;
   String ? get appointmentDate;
   String ? get status;
   String ? get job;
   String  ? get trigger;
  AppointmentInfo._();
  factory AppointmentInfo([updates(AppointmentInfoBuilder b)]) = _$AppointmentInfo;
  static Serializer<AppointmentInfo> get serializer => _$appointmentInfoSerializer;
}