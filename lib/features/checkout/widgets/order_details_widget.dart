import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/shared/custom_text.dart';

class OrderDetailsWidget extends StatelessWidget {
  final String orderPrice, taxesPrice, deliveryPrice, totalPrice;
  const OrderDetailsWidget({
    super.key,
    required this.orderPrice,
    required this.taxesPrice,
    required this.deliveryPrice,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20),
        checkoutWidget(title: 'Order', price: orderPrice),
        Gap(16),
        checkoutWidget(title: 'Taxes', price: taxesPrice),
        Gap(16),
        checkoutWidget(title: 'Delivery fees', price: deliveryPrice),
        Gap(16),
        Divider(endIndent: 16, indent: 16, color: Colors.grey[300]),
        Gap(16),
        checkoutWidget(
          title: 'Total:',
          price: totalPrice,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        Gap(20),
        checkoutWidget(
          title: 'Estimated delivery time:',
          title2: '15 - 30 mins',
          size: 14,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}

Widget checkoutWidget({
  String? title,
  String? title2,
  String? price,
  FontWeight? fontWeight,
  Color? color,
  double? size,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      children: [
        CustomText(
          text: title ?? '',
          size: size ?? 18,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? Colors.grey[600],
        ),
        Spacer(),
        CustomText(
          text: title2 ?? '\$$price',
          size: size ?? 18,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? Colors.grey[600],
        ),
      ],
    ),
  );
}
