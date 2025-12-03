import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            Gap(280),
            SvgPicture.asset(AppAssets.hungryLogo),
            Spacer(),
            Image.asset(AppAssets.splash),
          ],
        ),
      ),
    );
  }
}
