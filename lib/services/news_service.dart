import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  NewsService({required this.dio});
  final Dio dio;

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=9e11a9ef085c4512990011e89e69008e&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      // print(articlesList[1]);
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
