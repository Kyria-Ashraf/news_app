import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.category});

  CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return CategoryView(
              category: category.title,
            );
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(category.image),
                fit: BoxFit.fill,
              ),
              color: Colors.amberAccent,
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: Text(
              category.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
