import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppAssets.test2,
                                  width: 125,
                                  height: 125,
                                  fit: BoxFit.cover,
                                ),
                                Gap(25),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    CustomText(
                                      text: 'Hamburger',
                                      size: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(text: 'Qty : X3', size: 16),
                                    CustomText(text: 'Price: \$9.99', size: 16),
                                  ],
                                ),
                              ],
                            ),
                            CustomButton(
                              onPressed: () {},
                              title: 'Order Again',
                              width: double.infinity,
                              height: 50,
                              backgroundColor: Colors.grey[300],
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Gap(16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
