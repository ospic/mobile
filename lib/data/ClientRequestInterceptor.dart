import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClientRequestInterceptor implements RequestInterceptor{
   
  @override
  FutureOr<Request> onRequest(Request request) {
 final params = new Map<String, String>.from(request.headers);
 params['Authorization'] = _getAuthToken().toString();
 request.copyWith(headers: params);
    return request;
  }
_getAuthToken() async{
 SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
 String? stk = sharedPreferences.getString("BASE_64_EncodedAuthenticationKey");
    return 'Basic $stk'.toString(); 
}
  
}

