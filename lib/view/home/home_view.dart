import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/components/general_exception.dart';
import 'package:getx_mvvm/resources/components/internet_exception_widget.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference up = UserPreference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),automaticallyImplyLeading: false,actions: [
        // InkWell(child: Icon(Icons.logout),onTap: (){
        //   up.removeUser().then((value){
        //     Get.toNamed(RouteName.loginView);
        //   });
        // },)
      ],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Get.height * 0.1,),
                Text('email_hint'.tr,style: Theme.of(context).textTheme.headlineMedium,),
                SizedBox(height: Get.height * 0.03,),
                Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OutlinedButton(onPressed: (){
                      Get.updateLocale(Locale('en', 'US'));
                    }, child: Text("English")),
                    OutlinedButton(onPressed: (){
                      Get.updateLocale(Locale('bn','BD'));
                    }, child: Text("Bangla")),
                  ],),
                SizedBox(height: Get.height * 0.1,),
                GeneralException(onPress: () {  },)
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
