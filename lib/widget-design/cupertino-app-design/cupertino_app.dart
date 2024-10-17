import 'package:flutter/cupertino.dart';
import 'package:project/widget-design/cupertino-app-design/pages/feeds_page.dart';
import 'package:project/widget-design/cupertino-app-design/pages/search_page.dart';
import 'package:project/widget-design/cupertino-app-design/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/cupertino-app-design/cupertino_app.dart';
  const HomePage({Key? key}) :super (key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'Feeds'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings'
          ),
        ],
        activeColor: CupertinoColors.activeBlue,
        inactiveColor: CupertinoColors.systemGrey,
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return FeedsPage();
          case 1:
            return SearchPage();
          case 2:
            return SettingsPage();
          default:
            return Center(
              child: Text('Page not found!'),
            );
        }
      },
    );
  }
}