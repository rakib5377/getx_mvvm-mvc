import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settings'.tr),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Get.height * 0.1),
          Text(
            'language'.tr,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: Get.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text("english".tr),
              ),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('bn', 'BD'));
                },
                child: Text("bangla".tr),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.1),
        ],
      ),
    );
  }
}
