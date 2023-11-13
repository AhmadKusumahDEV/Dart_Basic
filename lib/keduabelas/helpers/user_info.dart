import 'package:shared_preferences/shared_preferences.dart';

const String Token = "token";
const String User_Id = "userId";
const String Username = "Username";

class Userinfo {
  Future<bool> setToken(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(Token, value);
  }

  Future<String?> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Token);
  }

  Future<bool> setUserId(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(User_Id, value);
  }

  Future<String?> getUserId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(User_Id).toString();
  }

  Future<bool> setUsername(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(Username, value);
  }

  Future<String?> getUsername() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(Username).toString();
  }

  Future<void> logout() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
