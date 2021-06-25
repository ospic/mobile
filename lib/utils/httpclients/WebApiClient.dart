import 'package:http/http.dart';

// ignore: uri_does_not_exist
import 'http_client_base.dart'
// ignore: uri_does_not_exist
if (dart.library.html) 'http_client_web.dart'
// ignore: uri_does_not_exist
if (dart.library.io) 'http_client_nonweb.dart';

class WebApiClient {
  final BaseClient _client = createHttpClient();
}