import 'package:flutter/material.dart';
import 'package:getx_mvvm/utils/Utils.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';
import 'package:get/get.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({super.key});
  final LoginViewModel loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.emailController.value,
      focusNode: loginVM.emailFocusNode.value,
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(
          context,
          loginVM.emailFocusNode.value,
          loginVM.passwordFocusNode.value,
        );
      },
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Email', 'email_hint'.tr);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'email'.tr,
        hintText: 'email_hint'.tr,
        border: OutlineInputBorder(),
      ),
    );
  }
}
