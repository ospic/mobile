import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:mobile/data/built_value_converter.dart.dart';

import 'package:mobile/model/built_post.dart';
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
  Future<Response<BuiltPost>> getPatients();

   @Get(path: '/users')
  Future<Response<BuiltList<User>>> getAllNotifications();

  @Get(path: '/consultations/')
  Future<Response<BuiltList<Consultation>>> getUserConsultations();

  @Get(path: '/{id}')
  Future<Response<BuiltPost>> getPost(@Path('id') int id);

  @Post()
  Future<Response<BuiltPost>> postPost(@Body() BuiltPost body);

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


