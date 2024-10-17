import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/ui/news_article_list_page.dart';
import 'package:project/ui/settings_page.dart';
import 'package:project/styles.dart';
import 'package:project/widget-design/cupertino-app-design/pages/settings_page.dart';
import 'package:project/widgets/platform_widget.dart';
import 'dart:io';

class NewsListPage extends StatefulWidget{
  static const routeName = '/news_list_page';

  const NewsListPage({Key? key}) : super (key: key);

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}


// NewsListPageState

class _NewsListPageState extends State<NewsListPage> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }

  Widget _buildAndroid(BuildContext context){
    return Scaffold(
        body: _bottomNavIndex == 0 ? ArticleListPage() : SettingsPage2(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: secondaryColor,
          currentIndex: _bottomNavIndex,
          items: _bottomNavBarItems,
          onTap: (selected) {
            setState(() {
              _bottomNavIndex = selected;
            });
          },
        ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: secondaryColor,
        items: _bottomNavBarItems,
      ),
      tabBuilder: (context, index){
        switch (index) {
          case 1:
            return SettingsPage2();
          default:
            return ArticleListPage();
        }
      },
    );
  }

  // final List<Widget> _listWidget = [
  //   ArticleListPage(),
  //   SettingsPage()
  // ];

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Platform.isIOS ? CupertinoIcons.news : Icons.public),
      label: 'Headlines'
    ),
    BottomNavigationBarItem(
      icon: Icon(Platform.isIOS ? CupertinoIcons.settings : Icons.settings),
      label: 'Setting'
    ),
  ];
}