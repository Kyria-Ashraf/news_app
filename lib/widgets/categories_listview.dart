import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

// ignore: must_be_immutable
class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key, required this.categoryItems});
  List<CategoryModel> categoryItems;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryItems.length,
          itemBuilder: ((context, index) {
            return CategoryCard(category: categoryItems[index]);
          })),
    );
  }
}
