import 'package:doctor_listing/res/colors/app_colors.dart';
import 'package:doctor_listing/res/routes/routes_name.dart';
import 'package:doctor_listing/view/screens/profile/logout_dialog.dart';
import 'package:doctor_listing/view/widgets/spacing.dart';
import 'package:doctor_listing/view_model/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(color: AppColors.primaryColor),
          child: Container(
            width: 220.w,
            height: double.infinity,
            decoration: BoxDecoration(color: AppColors.getContainerColor().withAlpha((.05 * 255).toInt())),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: Get.find<AppController>().isRtl() ? -40 : 0,
                  left: Get.find<AppController>().isRtl() ? 0 : -40,
                  child: SizedBox(
                    height: double.infinity,
                    width: 100.w,
                    child: Image.asset(
                        Get.find<AppController>().isRtl()
                            ? "assets/images/sidebar_shape_2.png"
                            : "assets/images/sidebar_shape.png",
                        color: AppColors.primaryColor,
                        width: 100.w),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VSpace(200.h),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: sidebarItems.length,
                        itemBuilder: (context, index) {
                          var item = sidebarItems[index];
                          return ListTile(
                            onTap: () {
                              Get.toNamed(item["route"]);
                            },
                            leading: Image.asset(
                              item['image'],
                              width: 24.w,
                              color: AppColors.whiteColor,
                            ),
                            title: Text(
                              item['title'],
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const LogoutDialog();
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                        decoration:
                            BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(50.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const HSpace(10),
                            Image.asset("assets/icons/logout.png", width: 24.w),
                            const HSpace(10),
                            Text(
                              "Log Out",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.dangerColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    VSpace(20.h)
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 90.h,
          child: Container(
            margin: EdgeInsets.only(left: 10.w),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John J. Grubbs",
                      style:
                          Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20.sp, color: AppColors.whiteColor),
                    ),
                    Text(
                      "grbross@gmail.com",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 15.sp, color: AppColors.whiteColor),
                    ),
                  ],
                ),
                Container(
                  width: 90.r,
                  height: 90.r,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15.r),
                    decoration: BoxDecoration(
                      color: AppColors.getContainerColor().withAlpha((.05 * 255).toInt()),
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60.r),
                      child: Image.asset(
                        "assets/images/user.png",
                        width: 60.r,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

List<dynamic> sidebarItems = [
  {"image": "assets/icons/person.png", "title": "Profile", "route": RoutesName.editProfileScreen},
  {"image": "assets/icons/calendar.png", "title": "Appointments", "route": RoutesName.appointmentListScreen},
  {"image": "assets/icons/fund_history.png", "title": "Transaction History", "route": RoutesName.transactionScreen},
  {"image": "assets/icons/heart.png", "title": "Wishlist", "route": RoutesName.wishlistScreen},
];
