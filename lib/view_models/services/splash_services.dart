
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'dart:async';

import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();
  Future<void> isLogin() async{

    userPreference.getUser().then((value){

      if (kDebugMode) {
        print("initial token: ${value.token}");
        print("isLogin: ${value.isLogin}");
      }
      try{
        final token = value.token;
        final isLogin = value.isLogin;
        //if(token.toString() == 'null' || (token ?? '').isEmpty || token == null){
        if(isLogin == null ||  isLogin == false || isLogin.toString() == 'null'){
          Timer(Duration(seconds: 3),(){
            Get.toNamed(RouteName.loginView);
          });
        }
        else{
          Timer(Duration(seconds: 3),(){
            Get.toNamed(RouteName.homeView);
          });
        }
      }
      catch(e){
        if (kDebugMode) {
          print('Error on start: $e');
        }
      }
    });

  }
}