
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/models/user_list/user_list_model.dart';
import 'package:getx_mvvm/resources/app_url/app_url.dart';

class UserListRepository{
  final BaseApiServices _apiServices = NetworkApiServices();

  Future<UserModelList> userListApi() async {
    dynamic response = await _apiServices.getApi(AppUrl.usersEndPoint);
    return UserModelList.fromJson(response);

  }
}