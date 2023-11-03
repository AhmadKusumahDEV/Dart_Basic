import '../helpers/user_info.dart';

class LoginService {
  Future<bool> login(String usernmae, String password) async {
    bool islogin = false;
    if (usernmae == "admin" && password == "admin") {
      await Userinfo().setToken("admin");
      await Userinfo().setUserId("1");
      await Userinfo().setUsername("admin");
      islogin = true;
    }
    return islogin;
  }
}
