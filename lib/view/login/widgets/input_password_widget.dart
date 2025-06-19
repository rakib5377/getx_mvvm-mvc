import 'package:flutter/material.dart';
import 'package:getx_mvvm/utils/Utils.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';


class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({super.key});
  final LoginViewModel loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Password', 'password_hint'.tr);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'password'.tr,
        hintText: 'password_hint'.tr,
        border: OutlineInputBorder(),
      ),
    );
  }
}
