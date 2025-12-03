import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
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
        backgroundColor: AppColors.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset(AppAssets.hungryLogo),
                  Gap(10),
                  CustomText(
                    text: 'Welcome Back, Discover The Fast Food',
                    size: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  Gap(60),
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
                 CustomButton(title: 'Login', onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Perform login action
                    }
                   },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
