
import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as darthttp;
import 'package:mobile/data/built_value_converter.dart.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/model/report.dart';
import 'package:mobile/utils/index.dart';
import 'package:mobile/utils/sharedpreference.dart';

import 'package:mobile/utils/httpclients/http_client_base.dart'
// ignore: uri_does_not_exist
if (dart.library.html) 'package:mobile/utils/httpclients/http_client_web.dart'
// ignore: uri_does_not_exist
if (dart.library.io) 'package:mobile/utils/httpclients/http_client_nonweb.dart';


part 'post_api_service.chopper.dart';
@ChopperApi()
abstract class PostApiService extends ChopperService {
  @Get(path: '/patients/')
  Future<Response<Patient>> getPatients();

   @Get(path: '/users')
  Future<Response<BuiltList<User>>> getAllNotifications();

  @Get(path: '/consultations/')
  Future<Response<BuiltList<Consultation>>> getUserConsultations();

  @Get(path: '/consultations/{id}')
  Future<Response<ConsultationPayload>> getUserConsultationById(@Path('id') int id);

  @Get(path: '/diagnoses/{id}')
  Future<Response<BuiltList<Diagnosis>>> getConsultationDiagnoses(@Path('id') int id);

  @Get(path: '/{id}/consultation')
  Future<Response<TransactionResponse>> getConsultationServiceAndCosts(@Path('id') int id);

  @Get(path: '/consultations/{id}/reports')
  Future<Response<BuiltList<Report>>> getConsultationReports(@Path('id') int id);

  @Get(path: '/consultations/reports/{id}')
  Future<Response<Report>> getConsultationReportById(@Path('id') int id);

  @Get(path: '/consultations/{id}/admissions')
  Future<Response<BuiltList<Admission>>> getConsultationAdmissions(@Path('id') int id);

  @Get(path: '/consultations/admissions/{id}')
  Future<Response<Admission>> getConsultationAdmissionsById(@Path('id') int id);

  @Get(path: '/consultations/admissions/{id}/visits')
  Future<Response<BuiltList<Visit>>> getConsultationAdmissionsVisits(@Path('id') int id);

  @Get(path: '/consultations/{cid}/transactions/{tid}')
  Future<Response<Transaction>> getUserConsultationTransactionById(@Path('cid') int cid,@Path('tid') int tid);

  @Get(path: '/bills')
  Future<Response<BuiltList<Bill>>> getBills();

  @Get(path: '/bills/{id}')
  Future<Response<BillPayload>> getBillById(@Path('id') int id);

  @Get(path: '/insurances')
  Future<Response<BuiltList<InsuranceCard>>> getInsuranceCards();

  @Get(path: '/{id}')
  Future<Response<Patient>> getPost(@Path('id') int id);

  @Get(path: '/appointments/')
  Future<Response<BuiltList<AppointmentInfo>>> getAppointments();

  @Get(path: '/appointments/{id}/')
  Future<Response<Appointment>> getAppointmentByd(@Path('id') int id);

  /// POST REQUESTS

  @Post()
  Future<Response<Patient>> postPost(@Body() Patient body);

  @Post(path: '/login')
  Future<Response<AuthResponse>> postForLogin(@Body() AuthPost body);

   @Post(path: '/appointments')
  Future<Response<AppointmentInfo>> createAppointment(@Body() AppointmentRequest body);

  @Post(path: '/updatepassword')
  Future<Response<AppointmentInfo>> updatePassword(@Body() PasswordUpdate body);

   /// PUT REQUESTS
  @Put(path: '/appointments/unschedule/{id}', optionalBody: true)
  Future<Response<AppointmentInfo>> unScheduleAppointmentById(@Path('id') int id,{@Query("action") String action="unschedule"});

  @Put(path: '/appointments/{id}', optionalBody: true)
  Future<Response<AppointmentInfo>> updateAppointmentById(@Path('id') int id, @Body() AppointmentRequest body);

  @Put(path: '/token', optionalBody: true)
  Future<Response<AppointmentInfo>> updateFcmToken(@Body()  TokenUpdate body);


  /// DELETE REQUESTS
  @Delete(path: '/appointments/{id}')
  Future<Response> deleteAppointmentByd(@Path('id') int id);


  static PostApiService create() {
    final darthttp.BaseClient dartClient = createHttpClient();
    
    /**final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    **/
    final client = ChopperClient(
      baseUrl: UrlEndpoints.RELEASE_BASE_URL,
      services: [_$PostApiService()],
      client: dartClient,
      converter: BuiltValueConverter(),
      interceptors: [
        _addQuery,
        HeadersInterceptor({'Cache-control': 'no-cache', }),
        HeadersInterceptor({'Content-Type': 'application/json'}),
        HeadersInterceptor({'Accept': '*/*'}),
        HttpLoggingInterceptor(),
        (Response response) async{
        if(response.statusCode == 401) {
          SharedPreference sharedPref = new SharedPreference();
          sharedPref.clearSF();
        }
        return response;
        },
      ],
    );

    return _$PostApiService(client);
  }
}

Future<Request> _addQuery(Request req) async {
  SharedPreference sp = new SharedPreference();
   String n = await sp.getStringValuesSF(enumKey.BASE_64_EncodedAuthenticationKey.toString());
   String _baseUrl = await sp.getStringValuesSF(enumKey.BASE_URL.toString());

  final _params = Map<String, dynamic>.from(req.parameters);
  final _headers = new Map<String, String>.from(req.parameters);
  if(req.url != '/login') {
    _headers['Authorization'] = 'Bearer $n';
  }

  print(_baseUrl == "null");
  return req.copyWith(parameters: _params, headers: _headers,baseUrl: (_baseUrl == "null") ? UrlEndpoints.RELEASE_BASE_URL :_baseUrl );

}


