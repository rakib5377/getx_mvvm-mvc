import 'package:get/get.dart';
import 'package:getx_mvvm/resources/routes/routes_name.dart';
import 'package:getx_mvvm/view/home/home_view.dart';
import 'package:getx_mvvm/view/login/login_view.dart';
import 'package:getx_mvvm/view/settings/settings.dart';
import 'package:getx_mvvm/view/splash_view/splash_view.dart';

class AppRoutes {
  static List<GetPage> appRoutes() => [
    GetPage(
      name: RouteName.splashView,
      page: () => SplashView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.homeView,
      page: () => HomeView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 250),
    ),
    GetPage(
      name: RouteName.loginView,
      page: () => LoginView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 250)
    ),
    GetPage(name: RouteName.settingsView, page: ()=> Settings(),
    transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 300)
    )
  ];
}
