class UrlEndpoints{
  static const String RELEASE_BASE_URL ="http://192.168.43.227:8080/api/self";
  static const String DEBUG_BASE_URL ="http://192.168.43.227:8080/api/self";
  static  String IMAGE_BASE_URL = RELEASE_BASE_URL.substring(RELEASE_BASE_URL.length - 4);

}