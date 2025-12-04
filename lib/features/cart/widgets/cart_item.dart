import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CartItem extends StatelessWidget {
  final String imagepath, title, desc;
  final Function()? onAdd, onRemove, onRemoveItem;
  final int numberOfItems;

  const CartItem({
    super.key,
    required this.imagepath,
    required this.title,
    required this.desc,
     this.onAdd,
     this.onRemove,
     this.onRemoveItem,
    required this.numberOfItems,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                Image.asset(
                  imagepath,
                  width: 125,
                  height: 125,
                  fit: BoxFit.cover,
                ),
                Gap(3),
                CustomText(text: title, size: 16, fontWeight: FontWeight.w600),

                CustomText(text: desc, size: 16),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    CustomButton(
                      onPressed: onRemove ?? () {},
                      width: 40,
                      height: 50,
                      backgroundColor: AppColors.primary,
                      textColor: Colors.white,
                      child: Image.asset(
                        AppAssets.minus,
                        width: 12,
                        height: 12,
                      ),
                    ),
                    Gap(20),
                    CustomText(
                      text: '$numberOfItems',
                      size: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    Gap(20),
                    CustomButton(
                      onPressed: onAdd?? () {},
                      width: 40,
                      height: 50,
                      backgroundColor: AppColors.primary,
                      textColor: Colors.white,
                      child: Image.asset(AppAssets.plus, width: 12, height: 12),
                    ),
                  ],
                ),
                Gap(40),
                CustomButton(
                  onPressed: onRemoveItem?? () {},
                  width: 170,
                  height: 50,
                  radius: 24,
                  title: 'Remove',
                  textColor: Colors.white,
                  backgroundColor: AppColors.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
