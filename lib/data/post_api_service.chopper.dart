// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostApiService;

  @override
  Future<Response<Patient>> getPatients() {
    final $url = '/patients/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Patient, Patient>($request);
  }

  @override
  Future<Response<BuiltList<User>>> getAllNotifications() {
    final $url = '/users';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<User>, User>($request);
  }

  @override
  Future<Response<BuiltList<Consultation>>> getUserConsultations() {
    final $url = '/consultations/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<Consultation>, Consultation>($request);
  }

  @override
  Future<Response<ConsultationPayload>> getUserConsultationById(int id) {
    final $url = '/consultations/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ConsultationPayload, ConsultationPayload>($request);
  }

  @override
  Future<Response<BuiltList<Diagnosis>>> getConsultationDiagnoses(int id) {
    final $url = '/diagnoses/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<Diagnosis>, Diagnosis>($request);
  }

  @override
  Future<Response<TransactionResponse>> getConsultationServiceAndCosts(int id) {
    final $url = '/$id/consultation';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<TransactionResponse, TransactionResponse>($request);
  }

  @override
  Future<Response<BuiltList<Report>>> getConsultationReports(int id) {
    final $url = '/consultations/$id/reports';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<Report>, Report>($request);
  }

  @override
  Future<Response<Report>> getConsultationReportById(int id) {
    final $url = '/consultations/reports/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Report, Report>($request);
  }

  @override
  Future<Response<BuiltList<Admission>>> getConsultationAdmissions(int id) {
    final $url = '/consultations/$id/admissions';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<Admission>, Admission>($request);
  }

  @override
  Future<Response<Admission>> getConsultationAdmissionsById(int id) {
    final $url = '/consultations/admissions/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Admission, Admission>($request);
  }

  @override
  Future<Response<BuiltList<Visit>>> getConsultationAdmissionsVisits(int id) {
    final $url = '/consultations/admissions/$id/visits';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<Visit>, Visit>($request);
  }

  @override
  Future<Response<Transaction>> getUserConsultationTransactionById(
      int cid, int tid) {
    final $url = '/consultations/$cid/transactions/$tid';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Transaction, Transaction>($request);
  }

  @override
  Future<Response<BuiltList<Bill>>> getBills() {
    final $url = '/bills';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<Bill>, Bill>($request);
  }

  @override
  Future<Response<BillPayload>> getBillById(int id) {
    final $url = '/bills/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BillPayload, BillPayload>($request);
  }

  @override
  Future<Response<BuiltList<InsuranceCard>>> getInsuranceCards() {
    final $url = '/insurances';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<InsuranceCard>, InsuranceCard>($request);
  }

  @override
  Future<Response<Patient>> getPost(int id) {
    final $url = '/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Patient, Patient>($request);
  }

  @override
  Future<Response<BuiltList<AppointmentInfo>>> getAppointments() {
    final $url = '/appointments/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<AppointmentInfo>, AppointmentInfo>($request);
  }

  @override
  Future<Response<Appointment>> getAppointmentByd(int id) {
    final $url = '/appointments/$id/';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Appointment, Appointment>($request);
  }

  @override
  Future<Response<Patient>> postPost(Patient body) {
    final $url = '';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Patient, Patient>($request);
  }

  @override
  Future<Response<dynamic>> postForLogin(AuthPost body) {
    final $url = '/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AppointmentInfo>> createAppointment(AppointmentRequest body) {
    final $url = '/appointments';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AppointmentInfo, AppointmentInfo>($request);
  }

  @override
  Future<Response<AppointmentInfo>> updatePassword(PasswordUpdate body) {
    final $url = '/updatepassword';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AppointmentInfo, AppointmentInfo>($request);
  }

  @override
  Future<Response<AppointmentInfo>> unScheduleAppointmentById(int id) {
    final $url = '/appointments/unschedule/$id';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<AppointmentInfo, AppointmentInfo>($request);
  }

  @override
  Future<Response<AppointmentInfo>> updateAppointmentById(
      int id, AppointmentRequest body) {
    final $url = '/appointments/$id';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<AppointmentInfo, AppointmentInfo>($request);
  }

  @override
  Future<Response<AppointmentInfo>> updateFcmToken(TokenUpdate body) {
    final $url = '/token';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<AppointmentInfo, AppointmentInfo>($request);
  }

  @override
  Future<Response<dynamic>> deleteAppointmentByd(int id) {
    final $url = '/appointments/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
