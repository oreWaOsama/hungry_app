import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

class SpicyView extends StatefulWidget {
  final double spicyLevel;
 final Function(double) onChanged;

  const SpicyView({super.key, required this.spicyLevel, required this.onChanged});

  @override
  State<SpicyView> createState() => _SpicyViewState();
}

class _SpicyViewState extends State<SpicyView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.cusBurger, width: 200, height: 250),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text:
                  'Customize Your Burger\n to Your Tastes. Ultimate\n Experience',
              size: 16,
            ),
            Gap(10),
            CustomText(text: 'Spicy', size: 14, fontWeight: FontWeight.w500),
            Gap(10),
            Slider(
              padding: EdgeInsets.only(right: 8),
              activeColor: AppColors.primary,
              inactiveColor: Colors.grey[350],
              min: 0.0,
              max: 1,
              value: widget.spicyLevel,
              onChanged: widget.onChanged,
            ),
            Row(
              children: [
                Image.asset(AppAssets.spicyNormal, width: 15, height: 15),
                Gap(160),
                Image.asset(AppAssets.spicySpicy, width: 15, height: 15),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
