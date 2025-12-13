import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/view/signup/signup_view.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';
import 'package:hungry_app/shared/custom_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(200),
                SvgPicture.asset(
                  AppAssets.hungryLogo,
                  color: AppColors.primary,
                ),
                Gap(10),
                CustomText(
                  text: 'Welcome Back, Discover The Fast Food',
                  size: 16,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w500,
                ),
                Gap(60),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          hint: 'Enter your email address',
                          controller: emailController,
                        ),
                        Gap(20),
                        CustomTextFormField(
                          hint: 'Enter your password',
                          controller: passwordController,
                          obscureText: true,
                        ),
                        Gap(40),
                        CustomButton(
                          title: 'Login',

                          textColor: Colors.white,
                          backgroundColor: AppColors.primary,
                          borderColor: Colors.white,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Perform login action
                            }
                          },
                        ),
                        Gap(16),
                        CustomButton(
                          title: 'Create Account ?',

                          backgroundColor: Colors.white,

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupView(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
