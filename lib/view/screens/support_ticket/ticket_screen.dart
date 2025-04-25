import 'package:doctor_listing/view_model/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:doctor_listing/res/colors/app_colors.dart';
import 'package:doctor_listing/res/routes/routes_name.dart';
import 'package:doctor_listing/view/screens/support_ticket/ticket_item.dart';
import 'package:doctor_listing/view/widgets/appbar.dart';
import 'package:doctor_listing/view/widgets/back_button.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  final AppController appController = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Tickets",
        leading: [GetBackButton()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () => Get.toNamed(RoutesName.createTicketScreen),
        child: const Icon(
          Ionicons.pencil_outline,
          color: AppColors.whiteColor,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.r),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () => Get.toNamed(RoutesName.chatScreen),
                child: TicketItem(
                  index: index,
                  isRtl: appController.isRtl(),
                ));
          },
        ),
      ),
    );
  }
}
