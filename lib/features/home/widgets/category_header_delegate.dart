import 'package:flutter/material.dart';
import 'package:hungry_app/features/home/widgets/category_view.dart';

class CategoryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final List<String> categories;
  final int selectedCategoryIndex;

  CategoryHeaderDelegate({
    required this.categories,
    required this.selectedCategoryIndex,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 2.5),
      alignment: Alignment.centerLeft,
      child: CategoryView(
        categories: categories,
        selectedCategoryIndex: selectedCategoryIndex,
      ),
    );
  }

  @override
  double get maxExtent => 50.0;

  @override
  double get minExtent => 50.0;

  @override
  bool shouldRebuild(covariant CategoryHeaderDelegate oldDelegate) {
    return oldDelegate.selectedCategoryIndex != selectedCategoryIndex ||
        oldDelegate.categories != categories;
  }
}
