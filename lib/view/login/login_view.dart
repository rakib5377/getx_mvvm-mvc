import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/components/round_button.dart';
import 'package:getx_mvvm/utils/Utils.dart';
import 'package:getx_mvvm/view/login/widgets/input_email_widget.dart';
import 'package:getx_mvvm/view/login/widgets/input_password_widget.dart';
import 'package:getx_mvvm/view/login/widgets/login_button_widget.dart';
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
              InputEmailWidget(),
              SizedBox(height: 40),
              InputPasswordWidget(),
              SizedBox(height: 40),
              LoginButtonWidget(formkey: _formKey,)
            ],
          ),
        ),
      ),
    );
  }
}
