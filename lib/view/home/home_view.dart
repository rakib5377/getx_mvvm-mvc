import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/resources/components/general_exception.dart';
import 'package:getx_mvvm/resources/components/internet_exception_widget.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/home/home_view_model.dart';
import 'package:getx_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  UserPreference up = UserPreference();
  final homeController = Get.put(HomeViewModel());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home".tr),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){Get.toNamed(RouteName.settingsView);}, icon: Icon(Icons.settings)),
          InkWell(child: Icon(Icons.logout),onTap: (){
            up.removeUser().then((value){
              Get.toNamed(RouteName.loginView);
            });
          },)
        ],
      ),
      body: Obx((){
        switch(homeController.rxRequestStatus.value){
          case Status.LOADING:
            return Center(child: CircularProgressIndicator(),);

          case Status.ERROR:
             if(homeController.error.value =='No internet'){
              return InternetExceptionWidget(onPress: () {
                homeController.refresh();
              },);
            }else {
              return GeneralException(onPress: () {homeController.refresh();});

            }
          case Status.COMPLETE:
            return ListView.builder(
                itemCount: homeController.userList.value.data?.length,
                itemBuilder: (context, index) {
                  var usersList = homeController.userList.value.data![index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage(usersList.avatar.toString()),),
                      title: Text(usersList.firstName.toString()),
                      subtitle: Text(usersList.email.toString()),
                    ),
                  );
                },);
          }
      }),
    );
  }
}
