import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/constants/app_assets.dart';

import 'package:hungry_app/features/home/widgets/card_item.dart';
import 'package:hungry_app/features/home/widgets/category_header_delegate.dart';

import 'package:hungry_app/features/home/widgets/search_bar.dart';
import 'package:hungry_app/features/home/widgets/user_header.dart';
import 'package:hungry_app/features/product/view/product_detalis_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> categories = ['All', 'Combos', 'Sliders', 'Classic'];
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          top: true,
          bottom: false,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(5),
                      UserHeader(),
                      Gap(10),
                      // Search Bar
                      CustomSearchBar(),
                      const Gap(15),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: CategoryHeaderDelegate(
                  categories: categories,
                  selectedCategoryIndex: selectedCategoryIndex,
                ),
              ),
              SliverToBoxAdapter(child: const Gap(15)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ).copyWith(bottom: 16),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetalisView(),
                          ),
                        );
                      },
                      child: CardItem(
                        image: AppAssets.test,
                        text: 'Hamburger',
                        desc: 'Chicken Burger',
                        rate: '4.5',
                      ),
                    );
                  }, childCount: 8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
