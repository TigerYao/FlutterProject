import 'package:htonline/model/login_user_info_entity.dart';
import 'package:htonline/model/user_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;

class SPUtils {
  SharedPreferences _sharedPreferences;
  static SPUtils instance;

  static SPUtils getInstance() {
    if (instance == null) {
      instance = SPUtils();
    }
    return instance;
  }

  Future<SPUtils> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return getInstance();
  }

  void saveUserInfo(LoginUserInfoData infoData) {
    _sharedPreferences.setString("userInfo", convert.jsonEncode(infoData));
  }

  LoginUserInfoData getUserInfo() {
    String jsonStr = _sharedPreferences.getString("userInfo");
    if(jsonStr == null || jsonStr.isEmpty)
      return null;
    LoginUserInfoData loginUserInfoData = LoginUserInfoData().fromJson(convert.jsonDecode(jsonStr));
    if(loginUserInfoData.token.isEmpty){
      return null;
    }else{
      UserInfoUtil.userInfoData = loginUserInfoData;
      return loginUserInfoData;
    }
  }
}
