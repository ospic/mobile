import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/staff.dart';

import 'appointment_info.dart';

part 'appointment.g.dart';
abstract class Appointment implements Built<Appointment, AppointmentBuilder>{
   bool ? get success;
  @BuiltValueField(wireName: "appointment")
  AppointmentInfo get appointment;
  @BuiltValueField(wireName: "staff")
  Staff get staff;
  Appointment._();
  factory Appointment([updates(AppointmentBuilder b)]) = _$Appointment;
  static Serializer<Appointment> get serializer => _$appointmentSerializer;
}