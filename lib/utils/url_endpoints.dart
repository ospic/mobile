class UrlEndpoints {
  static const String RELEASE_BASE_URL = "https://api.ospicx.com/api/self";
  static const String DEBUG_BASE_URL = "http://192.168.43.214:8282/api";
  // ignore: non_constant_identifier_names
  static  String IMAGE_BASE_URL = RELEASE_BASE_URL.substring(0, RELEASE_BASE_URL.length - 4);

}