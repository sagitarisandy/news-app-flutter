import 'package:flutter/material.dart';
import 'package:project/article.dart';
import 'package:project/detail_page.dart';
import 'package:project/first_screen.dart';
import 'package:project/widget-design/calculator.dart';
import 'package:project/widget-design/constraints_box.dart';
import 'package:project/widget-design/gesture_detector.dart';
import 'package:project/widget-design/layout_constraints.dart';
import 'package:project/widget-design/material_design.dart';
import 'package:project/widget-design/theme/text_theme.dart';
import 'package:project/widget-design/typography.dart';
import 'package:project/widget-design/widget_design.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity
      // ),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: myTextTheme
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const FirstScreen(),
        NewsListPage.routeName:(context) => const NewsListPage(),
        ArticleDetailPage.routeName:(context) => ArticleDetailPage(
          article: ModalRoute.of(context)?.settings.arguments as Article,
        ),
        ArticleWebView.routeName:(context) => ArticleWebView(
          url: ModalRoute.of(context)?.settings.arguments as String,
        ),
        LayoutConstraints.routeName:(context) => const LayoutConstraints(),
        WidgetDesign.routeName:(context) => const WidgetDesign(),
        ConstraintsBoxArya.routeName:(context) => const ConstraintsBoxArya(),
        MaterialDesignArya.routeName:(context) =>  const MaterialDesignArya(),
        LoremIpsum.routeName:(context) => const LoremIpsum(),
        GestureHome.routeName:(context) => const GestureHome(),
        Calculator.routeName:(context) => const Calculator()
      },
    );
  }
}

class NewsListPage extends StatelessWidget{
  static const routeName = '/artilce_list';

  const NewsListPage({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: FutureBuilder<String>(
        future:
          DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index){
              return _buildArticleItem(context, articles[index]);
            },
          );
        },
      ),
    );
  }
}

Widget _buildArticleItem(BuildContext context, Article article) {
  return ListTile(
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    leading: Image.network(
      article.urlToImage,
      width: 100,
      errorBuilder: (ctx, error, _) => const Center(child: Icon(Icons.error)),
    ),
    title: Text(article.title),
    subtitle: Text(article.author),
    onTap: () {
      Navigator.pushNamed(context, ArticleDetailPage.routeName,
        arguments: article
      );
    },
  );
}