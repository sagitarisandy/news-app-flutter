import 'package:flutter/material.dart';
import 'package:project/components/button.dart';
import 'package:project/ui/article_web_view.dart';
import 'package:project/widgets/custom_scaffold.dart';
import 'package:project/ui/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDetailPage extends StatelessWidget{
  static const routeName = '/article_detail';

  final Article article;

  const ArticleDetailPage({Key? key, required this.article}) :super (key: key);
  
  @override
  Widget build(BuildContext context){
    return CustomScaffold(
      // appBar: AppBar(
      //   title: Text(article.title),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: article.urlToImage,
              child: Image.network(article.urlToImage),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(article.description),
                  Divider(color: Colors.grey,),
                  Text(
                    article.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  Text('Date: ${article.publishedAt}'),
                  const SizedBox(height: 10,),
                  Text('Author: ${article.author}'),
                  const Divider(color: Colors.grey),
                  Text(
                    article.content,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    onPressed: () {
                      // print('disini');
                      Navigator.pushNamed(context, ArticleWebView.routeName,
                        arguments: article.url
                      );
                    },
                    text: 'Read More'
                  )
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}

