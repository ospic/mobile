import 'dart:io';

import 'dart:convert';
import 'package:chopper/chopper.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:mobile/model/patient.dart';

var cj = new CookieJar();
var queryParameters = {
  'msisdn': '255754710521',
  'tenantIdentifier': 'default',
};


class Session {
  static HttpClient client = new HttpClient()
    ..badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;

  static Future<List<Patient>> apiGet() async {
    HttpClientRequest request = await client.getUrl(_baseUri('/group-list'));
    _setHeadersCookies(request, _getFullUrl('/group-list'));
    HttpClientResponse response = await request.close();
    _updateCookies(response, _getFullUrl('/group-list'));
    return await jsonDecode(response.toString());
  }

  static Future<HttpClientResponse> apiAuthPost( dynamic data) async {
    HttpClientRequest request = await client.postUrl(_baseUri('/login'));
    _setHeadersCookies(request, _getFullUrl('/login'));
    request.add(utf8.encode(json.encode(data)));
    HttpClientResponse response = await request.close();
    _updateCookies(response, _getFullUrl('/login'));
    return response;
  }

  static void _setHeadersCookies(HttpClientRequest request, String url) {
    request.headers.set('content-type', 'application/json');
    request.cookies.addAll(cj.loadForRequest(Uri.parse(url)));
  }

  static void _updateCookies(HttpClientResponse response, String url) {
    cj.saveFromResponse(Uri.parse(url), response.cookies);
  }

  static Uri _baseUri(String urlEndPoint){
    var baseUrl = 'http://192.168.43.11:8080/api/self';
    String fullUrl = baseUrl + urlEndPoint;
    return Uri.parse(fullUrl);//.replace(queryParameters: queryParameters);
  }
  
  static String _getFullUrl(String  urlEndPoint){
    var baseUrl = 'https://ospicapi.herokuapp.com/api';
    return baseUrl + urlEndPoint;
  }

}
