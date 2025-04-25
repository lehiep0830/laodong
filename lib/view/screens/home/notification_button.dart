import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor_listing/res/colors/app_colors.dart';
import 'package:doctor_listing/res/routes/routes_name.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key, required this.notificationCount});

  final int notificationCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(RoutesName.notificationScreen),
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: AppColors.getBackgroundColor(),
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: AppColors.getBorderColor(), width: 1),
        ),
        child: Stack(
          children: [
            Image.asset(
              "assets/icons/notification.png",
              width: 22.w,
              color: AppColors.getTitleColor(),
            ),
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                width: 8.r,
                height: 8.r,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(25.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
