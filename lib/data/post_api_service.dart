import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:mobile/data/built_value_converter.dart.dart';
import 'package:mobile/model/bill.dart';
import 'package:mobile/model/bill_payload.dart';
import 'package:mobile/model/consultation_payload.dart';

import 'package:mobile/model/patient.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/consultation.dart';
import 'package:mobile/model/notification_model.dart';
import 'package:mobile/model/user.dart';
import 'package:mobile/utils/sharedpreference.dart';
import 'package:http/io_client.dart' as http;
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

  @Get(path: '/bills')
  Future<Response<BuiltList<Bill>>> getBills();

  @Get(path: '/bills/{id}')
  Future<Response<BillPayload>> getBillById(@Path('id') int id);

  @Get(path: '/{id}')
  Future<Response<Patient>> getPost(@Path('id') int id);

  @Post()
  Future<Response<Patient>> postPost(@Body() Patient body);

  @Post(path: '/login')
  Future<Response> postForLogin(@Body() dynamic body);

  static PostApiService create() {
    
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final client = ChopperClient(
      baseUrl: 'http://192.168.43.11:8080/api/self',
      services: [_$PostApiService()],
      client: http.IOClient(ioc),
      converter: BuiltValueConverter(),
      interceptors: [
        _addQuery,
        HeadersInterceptor({'Cache-control': 'no-cache', }),
        HeadersInterceptor({'Content-Type': 'application/json'}),
        HeadersInterceptor({'Accept': '*/*'}),
        HttpLoggingInterceptor()
      ],
    );

    return _$PostApiService(client);
  }
}

Future<Request> _addQuery(Request req) async {
  SharedPreference sharedPref = new SharedPreference();
   String n = await sharedPref.getStringValuesSF(enumKey.BASE_64_EncodedAuthenticationKey.toString());
  final params = Map<String, dynamic>.from(req.parameters);
  //params['tenantIdentifier'] = 'default';
  //params['msisdn'] = '255754710521';

  final header = new Map<String, String>.from(req.parameters);
  header['Authorization'] = 'Bearer $n';
  return req.copyWith(parameters: params, headers: header);
}


