import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/auth/view/profile/widgets/custom_text_field.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    nameController.text = 'oreWaOsama';
    emailController.text = 'osamagabr940@gmail.com';
    addressController.text = 'oreWaOsama';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        actions: [SvgPicture.asset(AppAssets.settings), Gap(16)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.test),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 4),
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            Gap(16),
            CustomTextField(controller: nameController, label: 'Name'),
            Gap(16),
            CustomTextField(controller: emailController, label: 'Email'),
            Gap(16),
            CustomTextField(controller: addressController, label: 'Address'),
            Gap(24),
            Divider(color: Colors.white),
            Gap(20),
            ListTile(
              onTap: () => setState(() {}),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              tileColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              leading: Image.asset(
                AppAssets.profileVisa,
                width: 65,
                height: 65,
              ),
              title: CustomText(text: 'Debit card', color: Colors.black),
              subtitle: CustomText(text: '**** **** 1234', color: Colors.black),
              trailing: CustomText(
                text: 'Default',
                color: Colors.black,
                size: 16,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(color: Colors.white),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CustomButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                width: 150,

                child: Row(
                  children: [
                    CustomText(
                      text: 'Edit Profile',
                      color: AppColors.primary,
                      size: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    Gap(14),
                    SvgPicture.asset(AppAssets.edit),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                onPressed: () {},
                backgroundColor: AppColors.primary,
                width: 180,

                child: Row(
                  children: [
                    CustomText(
                      text: 'Log out',
                      color: Colors.white,
                      size: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    Gap(14),
                    SvgPicture.asset(AppAssets.signOut),
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
