import 'dart:io';

import 'package:http/http.dart';
import 'package:http/io_client.dart';

BaseClient createHttpClient() {
  HttpClient client = new HttpClient();
  client.connectionTimeout = new Duration(seconds: 30);
  return IOClient(client);
}