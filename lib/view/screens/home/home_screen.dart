import 'package:doctor_listing/data/static/department_data.dart';
import 'package:doctor_listing/util/utils.dart';
import 'package:doctor_listing/view/screens/department/department_item.dart';
import 'package:doctor_listing/view/screens/doctor/doctor_filter_sheet.dart';
import 'package:doctor_listing/view/screens/doctor/doctor_item.dart';
import 'package:doctor_listing/view/widgets/input_decoration.dart';
import 'package:doctor_listing/view/widgets/side_drawer.dart';
import 'package:doctor_listing/view_model/controllers/app_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor_listing/data/static/doctor_data.dart';
import 'package:doctor_listing/res/colors/app_colors.dart';
import 'package:doctor_listing/res/routes/routes_name.dart';
import 'package:doctor_listing/view/screens/home/notification_button.dart';
import 'package:doctor_listing/view/widgets/spacing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AppController appController = Get.find<AppController>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchController = TextEditingController();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const SideDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
        child: Column(
          children: [
            const VSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: openDrawer,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.r),
                        child: Image.asset(
                          "assets/images/user.png",
                          width: 44.r,
                        ),
                      ),
                    ),
                    const HSpace(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John J. Grubbs",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          "How are you feeling today?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 12.sp, color: AppColors.getTextColor()),
                        ),
                      ],
                    )
                  ],
                ),
                HSpace(10.w),
                const NotificationButton(notificationCount: 2),
              ],
            ),
            VSpace(20.h),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _searchController,
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: AppInputDecoration.roundInputDecoration(
                        context: context,
                        hintText: 'Search here',
                        fillColor: AppColors.getContainerColor(),
                        borderColor: AppColors.primaryColor.withAlpha((0.2 * 255).toInt()),
                        prefixIcon: Image.asset(
                          "assets/icons/search.png",
                          color: AppColors.getTextColor2(),
                        ),
                      ),
                    ),
                  ),
                  HSpace(10.w),
                  InkWell(
                    onTap: () => showDoctorFilter(context),
                    child: Container(
                      width: 48.r,
                      height: 48.r,
                      padding: EdgeInsets.all(15.r),
                      decoration:
                          BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(10.r)),
                      child: Image.asset(
                        "assets/icons/filter.png",
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            VSpace(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Schedule",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                InkWell(
                  onTap: () => Get.toNamed(RoutesName.appointmentListScreen),
                  child: Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            VSpace(15.h),
            Container(
              width: double.infinity,
              height: 165.h,
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withAlpha((0.8 * 255).toInt()),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      appController.isRtl() ? "assets/images/appointment_bg_2.png" : "assets/images/appointment_bg.png",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      color: AppColors.primaryColor.withAlpha((0.8 * 255).toInt()),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(flex: 3, child: Image.asset("assets/images/doctor/doctor_6.png")),
                      Flexible(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. James B. Mummert",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: AppColors.whiteColor, fontSize: 16.sp),
                              ),
                              VSpace(6.h),
                              Text(
                                "Allergist/Immunologist",
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.whiteColor),
                              ),
                              VSpace(16.h),
                              Container(
                                padding: EdgeInsets.all(8.r),
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(5.r),
                                    border: const Border(left: BorderSide(color: AppColors.whiteColor))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.clock_solid,
                                      color: AppColors.whiteColor,
                                      size: 18.sp,
                                    ),
                                    HSpace(5.w),
                                    Text(
                                      Utils.dateFormat(DateTime.now().toString()),
                                      style:
                                          Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.whiteColor),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Swiper(
            //   itemBuilder: (BuildContext context, int index) {
            //     return const AppointmentItem(index: 0);
            //   },
            //   itemCount: 4,
            //   itemWidth: 500,
            //   itemHeight: 200.h,
            //   layout: SwiperLayout.TINDER,
            //   autoplay: true,
            // ),
            // const AppointmentItem(index: 0),
            VSpace(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Department",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                InkWell(
                  onTap: () => Get.toNamed(RoutesName.doctorListScreen),
                  child: Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            const VSpace(15),
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                itemCount: medicalDepartmentData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var item = medicalDepartmentData[index];
                  return Container(
                    margin: EdgeInsets.only(right: 10.w),
                    child: DepartmentItem(item: item),
                  );
                },
              ),
            ),
            const VSpace(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Specialist",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                InkWell(
                  onTap: () => Get.toNamed(RoutesName.doctorListScreen),
                  child: Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            const VSpace(15),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: doctorData.length,
              itemBuilder: (context, index) {
                var item = doctorData[index];
                return DoctorItem(item: item);
              },
            ),
          ],
        ),
      ),
    );
  }
}
