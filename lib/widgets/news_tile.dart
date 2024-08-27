import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});

  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            article.image ??
                "https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled.png",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          style: const TextStyle(color: Colors.black, fontSize: 20),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.subtitle ?? "Description Not Found",
          style: const TextStyle(color: Colors.grey, fontSize: 16),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
