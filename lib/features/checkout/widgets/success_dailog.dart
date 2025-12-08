import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 40),
            ),
            Gap(16),

            CustomText(
              text: 'Success !',
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
              size: 30,
            ),
            Gap(12),

            CustomText(
              text:
                  'Your payment was successful.\nA receipt for this purchase has\nbeen sent to your email.',
              size: 14,
              color: Color(0xffBCBBBB),
            ),
            Gap(25),

            CustomButton(
              title: 'Go Back',
              onPressed: () {
                Navigator.pop(context);
              },
              width: 200,
              radius: 20,
              backgroundColor: AppColors.primary,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
