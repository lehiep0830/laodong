import 'package:doctor_listing/res/colors/app_colors.dart';
import 'package:doctor_listing/view/screens/forgot_password/password_reset_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor_listing/res/routes/routes_name.dart';
import 'package:doctor_listing/view/widgets/app_button.dart';
import 'package:doctor_listing/view/widgets/input_decoration.dart';
import 'package:doctor_listing/view/widgets/spacing.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = "/signInScreen";
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isRemember = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  void initState() {
    super.initState();
    // languageData = languageController.getStoredData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.r),
          margin: EdgeInsets.only(top: 150.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const VSpace(10),
              const Text("Hello there, log in to continue!"),
              const VSpace(50),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email"),
                    VSpace(8.h),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: AppInputDecoration.roundInputDecoration(
                        context: context,
                        hintText: 'Username or Email',
                      ),
                    ),
                    VSpace(30.h),
                    const Text("Password"),
                    VSpace(8.h),
                    TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: AppInputDecoration.roundInputDecoration(
                        context: context,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: _togglePasswordVisibility,
                          icon: Image.asset(
                            _obscurePassword ? "assets/icons/eye_close.png" : "assets/icons/eye_open.png",
                            color: AppColors.getTextColor2(),
                            width: 18.w,
                          ),
                        ),
                      ),
                      obscureText: _obscurePassword,
                    ),
                    const VSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: .9,
                              child: Checkbox(
                                checkColor: AppColors.whiteColor,
                                activeColor: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.r)),
                                visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0), // adjust padding
                                side: BorderSide(color: AppColors.getBorderColor()),
                                value: _isRemember,
                                onChanged: (bool? value) {
                                  _isRemember = value!;
                                  setState(() {});
                                },
                              ),
                            ),
                            Text(
                              "Remember me",
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showPasswordResetEmail(context);
                          },
                          child: Text(
                            "Forgot Password?",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    ),
                    VSpace(40.h),
                    AppButton(
                      title: "Sign In".tr,
                      width: double.infinity,
                      bgColor: AppColors.primaryColor,
                      onPress: () {
                        Get.toNamed(RoutesName.bottomNavScreen);
                        // if (_formKey.currentState!.validate()) {
                        //   authController.signIn(
                        //     _emailController.text,
                        //     _passwordController.text,
                        //   );
                        // }
                      },
                    ),
                    VSpace(30.h),
                    Stack(
                      children: [
                        Divider(
                          height: 50.h,
                          color: AppColors.getBorderColor(),
                          thickness: 1,
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 14,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              color: AppColors.getBackgroundColor(),
                              child: const Text("Or sign in with"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    VSpace(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.r),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.getBorderColor(),
                              ),
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                            child: Image.asset(
                              "assets/icons/facebook.png",
                              width: 18.r,
                            ),
                          ),
                        ),
                        HSpace(20.w),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.r),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.getBorderColor(),
                              ),
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                            child: Image.asset(
                              "assets/icons/google.png",
                              width: 18.r,
                            ),
                          ),
                        ),
                        HSpace(20.w),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10.r),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.getBorderColor(),
                              ),
                              borderRadius: BorderRadius.circular(25.r),
                            ),
                            child: Image.asset(
                              "assets/icons/twitter.png",
                              width: 18.r,
                            ),
                          ),
                        )
                      ],
                    ),
                    VSpace(50.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        InkWell(
                          onTap: () {
                            Get.toNamed(RoutesName.signUpScreen);
                          },
                          child: Text(
                            "Sign Up".tr,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    ),
                    VSpace(20.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
