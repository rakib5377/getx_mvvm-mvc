
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'dart:async';

import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();
  void isLogin() async{

    userPreference.getUser().then((value){

      if (kDebugMode) {
        print("initial token: ${value.token}");
      }
      if(value.token!.isEmpty || value.token.toString() == 'null'){
        Timer(Duration(seconds: 3),(){
          Get.toNamed(RouteName.loginView);
        });
      }
      else{
        Timer(Duration(seconds: 3),(){
          Get.toNamed(RouteName.homeView);
        });
      }
    });

  }
}