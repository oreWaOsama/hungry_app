import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/features/cart/widgets/cart_item.dart';
import 'package:hungry_app/features/checkout/views/checkout_view.dart';
import 'package:hungry_app/shared/custom_button.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final int numberOfItems = 20;
  late List<int> numberOfItemsList;

  @override
  void initState() {
    numberOfItemsList = List.generate(20, (_) => 1);
    super.initState();
  }

  void _addItem(int index) {
    setState(() {
      numberOfItemsList[index]++;
    });
  }

  void _removeItem(int index) {
    setState(() {
      if (numberOfItemsList[index] > 1) {
        numberOfItemsList[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Column(
            children: [
              Gap(25),
              Expanded(
                child: ListView.separated(
                  itemCount: numberOfItems,
                  itemBuilder: (BuildContext context, int index) {
                    return CartItem(
                      imagepath: AppAssets.test2,
                      title: 'Hamburger',
                      desc: 'Veggie Burger',
                      numberOfItems: numberOfItemsList[index],
                      onAdd: () => _addItem(index),
                      onRemove: () => _removeItem(index),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Gap(16),
                ),
              ),
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

        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                title: 'Checkout',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutView(),
                    ),
                  );
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
}
