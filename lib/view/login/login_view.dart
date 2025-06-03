import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/components/round_button.dart';
import 'package:getx_mvvm/utils/Utils.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginViewModel loginVM = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login'.tr), automaticallyImplyLeading: false),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
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
                    Utils.snackBar('Email', 'Enter Email');
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'email_hint'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                controller: loginVM.passwordController.value,
                focusNode: loginVM.passwordFocusNode.value,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('Password', 'Enter Password');
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'password_hint'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Obx(() {
                return RoundButton(
                  title: 'login'.tr,
                  loading: loginVM.loading.value,
                  onPress: () {
                    if (_formKey.currentState!.validate()) {
                      loginVM.loginApi();
                    }
                  },
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
