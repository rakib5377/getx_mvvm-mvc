import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:getx_mvvm/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/utils/Utils.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';


class LoginViewModel extends GetxController {

  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;
  void loginApi(){
    loading.value = true;
    Map data = {
      'email' : emailController.value.text,
      'password' : passwordController.value.text
    };
    _api.loginApi(data).then((value){
      loading.value = false;
      if(value['error'] == 'user not found'){
        Utils.snackBar('Login', value['error']);
      }
      else{
        UserModel userModel = UserModel(
          token: value['token'],
          isLogin: true
        );
        Utils.snackBar('Login', "Login Successful");
        //userPreference.saveUser(UserModel.fromJson(value)).then((value){
        userPreference.saveUser(userModel).then((value){
          Get.delete<LoginViewModel>();
          Get.toNamed(RouteName.homeView)?.then((value){});
          if (kDebugMode) {
            print('User session saved');
          }
        }).onError((error, stackTrace){
          if (kDebugMode) {
            print('Failed to save user session$error');
          }
        });
        if (kDebugMode) {
          print('logon$value');
        }
      }

    }).onError((error, stackTrace){
      loading.value = false;
      Utils.snackBar('Error', error.toString());
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}