import 'dart:collection';
import 'dart:io';

import 'dart:convert';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:http/http.dart';
import 'package:mobile/model/patient.dart';


import 'httpclients/http_client_base.dart'
// ignore: uri_does_not_exist
if (dart.library.html) 'httpclients/http_client_web.dart'
// ignore: uri_does_not_exist
if (dart.library.io) 'httpclients/http_client_nonweb.dart';

var cj = new CookieJar();
var queryParameters = {
  'msisdn': '255754710521',
  'tenantIdentifier': 'default',
};


class Session {

 static final BaseClient client = createHttpClient();
  /**
  static HttpClient client = new HttpClient()
    ..badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
  **/

 /**
 static Future<List<Patient>> apiGet() async {
   HttpClientRequest request = await client.getUrl(_baseUri('/group-list'));
   _setHeadersCookies(request, _getFullUrl('/group-list'));
   HttpClientResponse response = await request.close();
   _updateCookies(response, _getFullUrl('/group-list'));
   return await jsonDecode(response.toString());
 }
**/

   static Future<Response> apiAuthPost( dynamic data) async {
    final body = jsonEncode(data);
    Response response = await client.post(_baseUri('/login'),headers: _setRequestHeaders(),body: body);
    return response;
  }

  static Map<String, String> _setRequestHeaders() {
    final Map<String, String> requestHeaders = {
      'Content-type': 'application/json'
    };
    return requestHeaders;
  }

  static void _updateCookies(Response response, String url) {
    cj.saveFromResponse(Uri.parse(url), null);
  }

  static String _baseUri(String urlEndPoint){
    var baseUrl = 'http://192.168.43.11:8080/api/self';
    String fullUrl = baseUrl + urlEndPoint;
    return Uri.parse(fullUrl).toString();//.replace(queryParameters: queryParameters);
  }
  
  static String _getFullUrl(String  urlEndPoint){
    var baseUrl = 'http://192.168.43.11:8080/api/self';
    return baseUrl + urlEndPoint;
  }

}
