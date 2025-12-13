import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/view/login/login_view.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';
import 'package:hungry_app/shared/custom_text_form_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
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
                Gap(8),
                CustomText(
                  text: 'Welcome to our Food App',
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
                Gap(50),
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                          Gap(40),
                          CustomButton(
                            title: 'Sign Up',
                            textColor: Colors.white,
                            backgroundColor: AppColors.primary,
                            borderColor: Colors.white,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                // Handle sign up action
                                print('oreWaOsama------------------------');
                              }
                            },
                          ),
                          Gap(16),
                          CustomButton(
                            title: 'Go to Login',

                            backgroundColor: Colors.white,

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginView(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
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
