import 'dart:collection';
import 'dart:io';

import 'dart:convert';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:http/http.dart';
import 'package:mobile/utils/index.dart';


import 'httpclients/http_client_base.dart'
// ignore: uri_does_not_exist
if (dart.library.html) 'httpclients/http_client_web.dart'
// ignore: uri_does_not_exist
if (dart.library.io) 'httpclients/http_client_nonweb.dart';

var cj = new CookieJar();



class Session {

 static final BaseClient client = createHttpClient();

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


  static String _baseUri(String urlEndPoint){
    var baseUrl = UrlEndpoints.RELEASE_BASE_URL;
    String fullUrl = baseUrl + urlEndPoint;
    return Uri.parse(fullUrl).toString();
  }
  
  static String _getFullUrl(String  urlEndPoint){
    var baseUrl = UrlEndpoints.RELEASE_BASE_URL;
    return baseUrl + urlEndPoint;
  }

}
