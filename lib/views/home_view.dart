import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/categories_listview.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<CategoryModel> categoryItemsList = [
    CategoryModel(image: 'assets/entertaiment.avif', title: "Entertainment"),
    CategoryModel(image: 'assets/sports.jpeg', title: "Sports"),
    CategoryModel(image: 'assets/business.jpeg', title: "Business"),
    CategoryModel(image: 'assets/health.avif', title: "Health"),
    CategoryModel(image: 'assets/science.avif', title: "Science"),
    CategoryModel(image: 'assets/technology.jpeg', title: "Technology"),
    CategoryModel(image: 'assets/general.jpeg', title: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(
                categoryItems: categoryItemsList,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            const NewsListViewBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
