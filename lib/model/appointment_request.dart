import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'appointment_request.g.dart';
abstract class AppointmentRequest implements Built<AppointmentRequest, AppointmentRequestBuilder>{
  int ? get physicianId;
  String ? get appointmentDate;
  String ? get timeZone;
  AppointmentRequest._();
  factory AppointmentRequest.from( String appointmentDate) => new _$AppointmentRequest._(
    physicianId: 2,
    appointmentDate: appointmentDate,
    timeZone: 'Africa/Dar_es_Salaam'

  );
  factory AppointmentRequest([updates(AppointmentRequestBuilder b)]) = _$AppointmentRequest;
  static Serializer<AppointmentRequest> get serializer => _$appointmentRequestSerializer;
}
