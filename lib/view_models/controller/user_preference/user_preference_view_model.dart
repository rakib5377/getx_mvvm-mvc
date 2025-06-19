

import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class UserPreference {

  Future<bool> saveUser(UserModel user) async {

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('token', user.token.toString());
    pref.setBool('isLogin', user.isLogin!);
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? token =  pref.getString('token');
    bool? isLogin = pref.getBool('isLogin');
    return UserModel(
      token: token,
      isLogin: isLogin
    );
  }

  Future<bool> removeUser() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('token');
    pref.remove('isLogin');
    return true;
  }

}