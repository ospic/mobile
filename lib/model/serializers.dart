import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'index.dart';


part 'serializers.g.dart';

@SerializersFor(const [
  Patient, AuthPost, AuthResponse, AuthRole,
  Privilege, User, Transaction,TransactionResponse,
  Role, Consultation, ContactsInformation, Bill, BillPayload,
  Staff, Department,ConsultationPayload, Diagnosis, Report,Visit, Admission,
  Insurance, InsuranceCard, AppointmentInfo, Appointment, AppointmentRequest, PasswordUpdate
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
