import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getx_mvvm/resources/color/app_color.dart';

class Utils {

  static void fieldFocusChange (BuildContext context,FocusNode currentFocus, FocusNode nextFocus){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,
      fontSize: 16,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.BOTTOM,

    );
  }

  static snackBar(String message, String title){
    Get.snackbar(title, message);
  }
}