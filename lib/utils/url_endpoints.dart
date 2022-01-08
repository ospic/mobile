class UrlEndpoints{
  static const String RELEASE_BASE_URL ="http://192.168.194.167:8080/api/self";
  // ignore: non_constant_identifier_names
  static  String IMAGE_BASE_URL = RELEASE_BASE_URL.substring(0, RELEASE_BASE_URL.length - 5);

}