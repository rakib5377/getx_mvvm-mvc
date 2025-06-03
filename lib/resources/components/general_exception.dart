import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/color/app_color.dart';


class GeneralException extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralException({super.key,required this.onPress});

  @override
  State<GeneralException> createState() => _GeneralExceptionState();
}

class _GeneralExceptionState extends State<GeneralException> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.cloud_off, color: AppColor.redColor,size: 60,),
          SizedBox(height: Get.height * 0.006,),
          Text('general_exception'.tr , textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
          SizedBox(height: Get.height * 0.02,),
          GestureDetector(
            onTap: widget.onPress,
            child: Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Center(child: Text("Retry",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),
    );
  }
}
