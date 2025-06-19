

import 'package:get/get.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/models/user_list/user_list_model.dart';
import 'package:getx_mvvm/repository/home_repository/user_list_repository.dart';

class HomeViewModel extends GetxController{

  final _api = UserListRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserModelList().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status status)=> rxRequestStatus.value = status;
  void setUserList(UserModelList users) => userList.value = users;
  void setError(String value) => error.value = value;

  void userListApi(){
    _api.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETE);
      setUserList(value);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refresh() {
    setRxRequestStatus(Status.LOADING);
    _api.userListApi().then((value){
      setRxRequestStatus(Status.COMPLETE);
      setUserList(value);
    }).onError((error, stackTrace){
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }
}