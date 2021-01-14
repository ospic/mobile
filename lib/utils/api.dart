import 'dart:io';

import 'dart:convert';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:mobile/model/built_post.dart';

var cj = new CookieJar();
var queryParameters = {
  'msisdn': '255754710521',
  'tenantIdentifier': 'default',
};


class Session {
  static HttpClient client = new HttpClient()
    ..badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;

  static Future<List<BuiltPost>> apiGet() async {
    HttpClientRequest request = await client.getUrl(_baseUri('/group-list'));
    _setHeadersCookies(request, _getFullUrl('/group-list'));
    HttpClientResponse response = await request.close();
    _updateCookies(response, _getFullUrl('/group-list'));
    return await jsonDecode(response.toString());
  }

  static Future<String> apiAuthPost( dynamic data) async {
    HttpClientRequest request = await client.postUrl(_baseUri('/authentication'));
    _setHeadersCookies(request, _getFullUrl('/authentication'));
    request.add(utf8.encode(json.encode(data)));
    HttpClientResponse response = await request.close();
    _updateCookies(response, _getFullUrl('/authentication'));
    

    return await response.transform(utf8.decoder).join();
  }

  static void _setHeadersCookies(HttpClientRequest request, String url) {
    request.headers.set('content-type', 'application/json');
    request.headers.set('Authorization', 'Basic bWlmb3M6cGFzc3dvcmQ=');
    request.cookies.addAll(cj.loadForRequest(Uri.parse(url)));
  }

  static void _updateCookies(HttpClientResponse response, String url) {
    cj.saveFromResponse(Uri.parse(url), response.cookies);
  }

  static Uri _baseUri(String urlEndPoint){
    var baseUrl = 'http://ospicapi.herokuapp.com/api';
    String fullUrl = baseUrl + urlEndPoint;
    return Uri.parse(fullUrl).replace(queryParameters: queryParameters);
  }
  
  static String _getFullUrl(String  urlEndPoint){
    var baseUrl = 'http://ospicapi.herokuapp.com/api';
    return baseUrl + urlEndPoint;
  }

}
