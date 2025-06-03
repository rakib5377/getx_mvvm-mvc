



import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/resources/app_url/app_url.dart';

class LoginRepository {
  final BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppUrl.loginEndPoint);
    return response;
  }
}