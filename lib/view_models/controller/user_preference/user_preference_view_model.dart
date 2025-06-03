

import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class UserPreference {

  Future<bool> saveUser(UserModel user) async {

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('token', user.token.toString());
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? token =  pref.getString('token');
    return UserModel(
      token: token
    );
  }

  Future<bool> removeUser() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('token');
    return true;
  }

}