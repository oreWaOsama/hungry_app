import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';
import 'package:hungry_app/features/product/view/toppings_card.dart';
import 'package:hungry_app/features/product/widgets/spicy_view.dart';
import 'package:hungry_app/shared/custom_text.dart';

class ProductDetalisView extends StatefulWidget {
  const ProductDetalisView({super.key});

  @override
  State<ProductDetalisView> createState() => _ProductDetalisViewState();
}

class _ProductDetalisViewState extends State<ProductDetalisView> {
  double _spicyLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SpicyView(
              spicyLevel: _spicyLevel,
              onChanged: (double value) {
                setState(() {
                  _spicyLevel = value;
                });
              },
            ),
            Gap(50),
            CustomText(text: 'Toppings', size: 18, fontWeight: FontWeight.w600),
            Gap(20),
            SizedBox(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return ToppingsCard(
                    title: 'Tomato',
                    imagePath: AppAssets.tomato,
                    onTap: () {
                      print('addeeeeeeedddd');
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) => Gap(16),
                itemCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
