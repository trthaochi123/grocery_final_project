import 'package:sg_grocery_project/main.dart';

class PrefKey {
  static const String isLogin = "IS_LOGIN";
  // TODO: add key Shared Preferences ...
}


void setLogin(bool value) {
  prefs?.setBool(PrefKey.isLogin, value);
}


//kiểm tra giá trị boolean trong SharedPreferences
// để xác định xem người dùng đã đăng nhập hay chưa
bool checkLogin() {
  return prefs?.getBool(PrefKey.isLogin) == true;
}