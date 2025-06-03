import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/resources/color/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.loading = false,
    required this.title,
    required this.onPress,
    this.height = 50,
    this.width = 160,
    this.buttonColor = AppColor.primaryColor,
    this.textColor = AppColor.primaryTextColor,
  });

  final bool loading;
  final String title;
  final VoidCallback onPress;
  final double height, width;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child:
          loading
              ? CircularProgressIndicator()
              : Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: textColor),
          ),
        )
      ),
    );
  }
}
