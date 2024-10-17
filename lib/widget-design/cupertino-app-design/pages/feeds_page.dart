import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/widget-design/cupertino-app-design/category_popup.dart';

class FeedsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Feeds Page'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Feeds Page',
            //   style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            // ),
            SizedBox(height: 8),
            CupertinoButton.filled(
              child: Text('Select Category'),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      title: Text('Select Categories'),
                      actions: [
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => CategoryPage(
                                  selectedCategory: 'Technology'
                                )
                              )
                            );
                          },
                          child: Text('Technoloty', style: TextStyle(color: Colors.black)),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => CategoryPage(
                                  selectedCategory: 'Business'
                                )
                              )
                            );
                          },
                          child: Text('Business', style: TextStyle(color: Colors.black)),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => CategoryPage(
                                  selectedCategory: 'Sport'
                                )
                              )
                            );
                          },
                          child: Text('Sport', style: TextStyle(color: Colors.black)),
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: Text('Close', style: TextStyle(color: Colors.red)),
                        onPressed: () => Navigator.pop(context),
                      ),
                    );
                  }
                );
              }
            )
          ],
        )
      ),
    );
  }
}