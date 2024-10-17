import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Settings Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('Log Out', style: TextStyle(color: Colors.black)),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text('Are you sure want to log out?', style: TextStyle(color: Colors.black)),
                  actions: [
                    CupertinoDialogAction(
                      child: Text('No', style: TextStyle(color: Colors.black)),
                      onPressed: () => Navigator.pop(context),
                    ),
                    CupertinoDialogAction(
                      child: Text('Yes', style: TextStyle(color: Colors.black)),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                );
              }
            );
          },
        ),
      ),
    );
  }
}