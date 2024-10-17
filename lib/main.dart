import 'package:flutter/material.dart';
import 'package:project/ui/article.dart';
import 'package:project/ui/article_web_view.dart';
import 'package:project/ui/detail_page.dart';
import 'package:project/first_screen.dart';
import 'package:project/ui/news_article_list_page.dart';
import 'package:project/ui/news_list_page.dart';
import 'package:project/pixel_page.dart';
import 'package:project/styles.dart';
import 'package:project/widget-design/calculator.dart';
import 'package:project/widget-design/constraints_box.dart';
import 'package:project/widget-design/cupertino-app-design/cupertino_app.dart';
import 'package:project/widget-design/cupertino.dart';
import 'package:project/widget-design/gesture_detector.dart';
import 'package:project/widget-design/latihan-silver-list/learning_path_page.dart';
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
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primaryColor,
          onPrimary: Colors.black,
          secondary: secondaryColor
        ),
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
        Calculator.routeName:(context) => const Calculator(),
        PixelPage.routeName:(context) => const PixelPage(),
        LearningPathPage.routeName:(context) => const LearningPathPage(),
        AdaptivePage.routeName:(context) => const AdaptivePage(),
        HomePage.routeName:(context) => const HomePage()
      },
    );
  }
}

