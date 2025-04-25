import 'package:doctor_listing/view_model/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:doctor_listing/res/localization/languages.dart';
import 'package:doctor_listing/res/routes/routes.dart';
import 'package:doctor_listing/res/themes/theme.dart';
import 'package:doctor_listing/res/themes/theme_service.dart';
import 'package:doctor_listing/view/screens/splash/splash_screen.dart';
import 'package:doctor_listing/view/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AppController());

    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Builder(builder: (context) {
        return GetBuilder<AppController>(builder: (appController) {
          return GetMaterialApp(
            textDirection: appController.textDirection,
            debugShowCheckedModeBanner: false,
            title: "doctor_listing",
            translations: Languages(),
            locale: const Locale("en", "US"),
            fallbackLocale: const Locale("en", "US"),
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: ThemeService().getThemeMode(),
            home: const LoginScreen(),
            getPages: AppRoutes.appRoutes(),
          );
        });
      }),
    );
  }
}
