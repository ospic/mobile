import 'package:shared_preferences/shared_preferences.dart';

enum enumKey { IS_LOGGED_IN, BASE_64_EncodedAuthenticationKey }

class SharedPreference {
  SharedPreferences prefs;

  setStringToSF(String key, String value) async {
    prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, value);
  }

  Future<bool> setIntToSF(String key, int value) async {
    prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(key, value);
  }

  setDoubleToSF(String key, double value) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(key, value);
  }

  Future<void> setBooleanToSF(String key, bool value) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  setStringList(String key, List<String> value) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, value);
  }

  Future<String> getStringValuesSF(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key).toString();
  }


  Future<bool> getBoolValuesSF(String key) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
   
  }
  /**
  getIntValuesSF(String key) async {
    int intValue = await getSp().getInt(key);
    return intValue;
  }

  getDoubleValuesSF(String key) async {
    double doubleValue = await getSp().getDouble(key);
    return doubleValue;
  }

  deleteValueSF(String key) async {
    return await getSp().remove(key);
  }

  contain(String key) async{
    return await getSp().containsKey(key);
  }
    **/
}
