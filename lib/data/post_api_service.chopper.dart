// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient client]) {
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
  Future<Response<Patient>> getPost(int id) {
    final $url = '/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Patient, Patient>($request);
  }

  @override
  Future<Response<Patient>> postPost(Patient body) {
    final $url = '';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Patient, Patient>($request);
  }

  @override
  Future<Response> postForLogin(dynamic body) {
    final $url = '/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
