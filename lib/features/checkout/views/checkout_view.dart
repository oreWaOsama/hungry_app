import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/checkout/widgets/order_details_widget.dart';
import 'package:hungry_app/features/checkout/widgets/success_dailog.dart';
import 'package:hungry_app/shared/custom_button.dart';

import 'package:hungry_app/shared/custom_text.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String selectedMethod = 'cash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              CustomText(
                text: 'Order summary',
                size: 20,
                fontWeight: FontWeight.w600,
              ),
              OrderDetailsWidget(
                orderPrice: '18.5',
                taxesPrice: '3.50',
                deliveryPrice: '40.33',
                totalPrice: '100.00',
              ),
              Gap(65),
              CustomText(
                text: 'Payment methods',
                size: 20,
                fontWeight: FontWeight.w600,
              ),
              Gap(15),
              ListTile(
                onTap: () => setState(() {
                  selectedMethod = 'cash';
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                tileColor: Color(0xff3C2F2F),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                leading: Image.asset(AppAssets.cash),
                title: CustomText(
                  text: 'Cash on Delivery',
                  color: Colors.white,
                ),
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'cash',
                  groupValue: selectedMethod,
                  onChanged: (value) {
                    setState(() {
                      selectedMethod = value!;
                    });
                  },
                ),
              ),
              Gap(10),
              ListTile(
                onTap: () => setState(() {
                  selectedMethod = 'visa';
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                tileColor: Colors.blue.shade900,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                leading: Image.asset(AppAssets.visa, width: 65, height: 65),
                title: CustomText(text: 'Debit card', color: Colors.white),
                subtitle: CustomText(
                  text: '**** **** 1234',
                  color: Colors.white,
                ),
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'visa',
                  groupValue: selectedMethod,
                  onChanged: (value) {
                    setState(() {
                      selectedMethod = value!;
                    });
                  },
                ),
              ),
              Gap(5),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xffEF2A39),
                    value: true,
                    onChanged: (v) {},
                  ),
                  CustomText(
                    text: 'Save card details for future payments',
                    size: 16,
                    color: Color(0xff808080),
                  ),
                ],
              ),
              Gap(10),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
        ),

        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: .start,
                children: [
                  CustomText(
                    text: 'Total',
                    size: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    text: '\$${99.19}',
                    size: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              Spacer(),
              CustomButton(
                title: 'Pay Now',
                onPressed: () {
                  showPaymentSuccessDialog(context);
                },
                width: 200,
                radius: 20,
                backgroundColor: AppColors.primary,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showPaymentSuccessDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const SuccessDialog(),
    );
  }
}
