import 'package:doctor_listing/view/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_listing/data/static/gateway_data.dart';
import 'package:doctor_listing/res/colors/app_colors.dart';
import 'package:doctor_listing/view/widgets/appbar.dart';
import 'package:doctor_listing/view/widgets/back_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  GatewayModel? selectedGateway;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Payment Screen",
        leading: [GetBackButton()],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              itemCount: gatewayData.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final item = gatewayData[index];
                return InkWell(
                  onTap: () {
                    selectedGateway = item;
                    setState(() {});
                    showCustomModalBottomSheet(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.getContainerColor(),
                    ),
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 5.h),
                        leading: SizedBox(
                          width: 50.r,
                          height: 50.r,
                          child: Image.asset(item.image),
                        ),
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5.h),
                          child: Text(
                            item.title,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        subtitle: Text(
                          item.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.sp),
                        ),
                        trailing: item == selectedGateway
                            ? Image.asset(
                                "assets/icons/check.png",
                                width: 24.w,
                                color: AppColors.successColor,
                              )
                            : const SizedBox()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
