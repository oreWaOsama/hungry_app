import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CardItem extends StatelessWidget {
  final String image, text, desc, rate;
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3.5,
      child: Container(
        height: 260,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Image.asset(
                image,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Gap(10),
              CustomText(text: text, size: 18, fontWeight: FontWeight.bold),
              Gap(5),
              CustomText(text: desc, size: 16, color: Colors.grey[600]),
              Gap(10),
              CustomText(
                text: '⭐$rate',
                size: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
