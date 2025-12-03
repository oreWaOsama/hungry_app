import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text_form_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(AppAssets.hungryLogo),
                    Gap(60),
                    CustomTextFormField(
                      hint: 'Name',
                      controller: nameController,
                    ),
                    Gap(16),
                    CustomTextFormField(
                      hint: 'Email Address',
                      controller: emailController,
                    ),
                    Gap(16),
                    CustomTextFormField(
                      hint: 'Password',
                      controller: passwordController,
                      obscureText: true,
                    ),
                    Gap(16),
                    CustomTextFormField(
                      hint: 'Confirm Password',
                      controller: confirmPasswordController,
                      obscureText: true,
                    ),
                    Gap(40),
                    CustomButton(
                      title: 'Sign Up',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // Handle sign up action
                          print('oreWaOsama------------------------');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
