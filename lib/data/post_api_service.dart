
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

  @Post()
  Future<Response<Patient>> postPost(@Body() Patient body);

  @Post(path: '/login')
  Future<Response> postForLogin(@Body() AuthPost body);

   @Post(path: '/appointments')
  Future<Response<AppointmentInfo>> createAppointment(@Body() AppointmentRequest body);

  @Post(path: '/updatepassword')
  Future<Response<AppointmentInfo>> updatePassword(@Body() PasswordUpdate body);

   /// PUT REQUESTS
  @Put(path: '/appointments/unschedule/{id}')
  Future<Response<AppointmentInfo>> unScheduleAppointmentById(@Path('id') int id);

  @Put(path: '/appointments/{id}')
  Future<Response<AppointmentInfo>> updateAppointmentById(@Path('id') int id, @Body() AppointmentRequest body);

  @Put(path: '/token')
  Future<Response<AppointmentInfo>> updateFcmToken(@Body()  TokenUpdate body);


  /// DELETE REQUESTS
  @Delete(path: '/appointments/{id}')
  Future<Response> deleteAppointmentByd(@Path('id') int id);


  static PostApiService create() {
    final darthttp.BaseClient dartclient = createHttpClient();
    
    /**final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    **/
    final client = ChopperClient(
      baseUrl: UrlEndpoints.RELEASE_BASE_URL,
      services: [_$PostApiService()],
      client: dartclient,
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
  SharedPreference sharedPref = new SharedPreference();
   String n = await sharedPref.getStringValuesSF(enumKey.BASE_64_EncodedAuthenticationKey.toString());
  final params = Map<String, dynamic>.from(req.parameters);
  final header = new Map<String, String>.from(req.parameters);
  if(req.url != '/login') {
    header['Authorization'] = 'Bearer $n';
  }
  return req.copyWith(parameters: params, headers: header);
}


