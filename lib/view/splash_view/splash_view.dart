import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/assets/image_assets.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  SplashServices services = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    services.isLogin();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Lottie.asset(
                ImageAssets.greenBubble,
                fit: BoxFit.cover,
                width: double.infinity,
                //height: Get.height * .5,
              ),
            ),
            Spacer(),
            Align(
                alignment: Alignment.center,
                child: Text("splash_view".tr,textAlign: TextAlign.center
                  ,style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                )),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
