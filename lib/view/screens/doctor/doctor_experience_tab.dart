import 'package:doctor_listing/res/colors/app_colors.dart';
import 'package:doctor_listing/view/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorExperienceTab extends StatelessWidget {
  const DoctorExperienceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Experience", style: Theme.of(context).textTheme.titleMedium),
        VSpace(16.h),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 20.h),
              padding: EdgeInsets.all(20.r),
              decoration:
                  BoxDecoration(color: AppColors.getContainerColor(), borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Northern International Medical College Hospital ",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp),
                  ),
                  VSpace(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Designation",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          VSpace(8.h),
                          Text(
                            "Allergist/immunologist",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp),
                          ),
                          VSpace(20.h),
                          Text(
                            "Employment Status",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          VSpace(8.h),
                          Text(
                            "Jan 1, 2023 - Present",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Department",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          VSpace(8.h),
                          Text(
                            "Center for Health",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15.sp),
                          ),
                          VSpace(20.h),
                          Text(
                            "Period",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          VSpace(8.h),
                          Text(
                            "1 Year 6 Months",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
