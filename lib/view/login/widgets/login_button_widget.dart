import 'package:flutter/material.dart';
import 'package:getx_mvvm/resources/components/round_button.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';


class LoginButtonWidget extends StatelessWidget {
  final formkey;
  LoginButtonWidget({super.key,required this.formkey});
  final LoginViewModel loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return RoundButton(
        title: 'login'.tr,
        loading: loginVM.loading.value,
        onPress: () {
          if (formkey.currentState!.validate()) {
            loginVM.loginApi();
          }
        },
      );
    });
  }
}
