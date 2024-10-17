import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/widgets/platform_widget.dart';

class SettingsPage2 extends StatelessWidget{
  const SettingsPage2({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }

  //_buildList() yang mengembalikan widget. Di sini kita isi dengan beberapa
  //opsi pengaturan yang diinginkan.Untuk saat ini kita tambahkan Switch
  //untuk mengatur tema dark.
  Widget _buildList(BuildContext context){
    return ListView(
      children: [
        Material(
            child: ListTile(
              title: const Text('Dark Theme'),

              //Widget Switch.adaptive akan secara otomatis menampilkan widget Switch untuk Android
              //dan CupertinoSwitch untuk iOS.
              trailing: Switch.adaptive(
                value: false,
                onChanged: (value) {
                  //Flutter memiliki fungsi built-in untuk menampilkan alert dialog.
                  //Panggil fungsi showDialogketika Switch diklik.

                  //Untuk mengatasinya, ada fungsi serupa untuk menampilkan dialog dengan gaya Cupertino, yaitu showCupertinoDialog. Bukalah kembali berkas setting_page.dart, pengecekan platform yang digunakan, serta beri dialog khusus gaya Cupertino.
                  defaultTargetPlatform == TargetPlatform.iOS
                  ?
                  showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text('Coming Soon!'),
                        content: const Text('This feature will be coming soon!'),
                        actions: [
                          CupertinoDialogAction(
                            child: const Text('Ok', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    }
                  )
                  :
                  showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: const Text('Coming Soon!'),
                        content: const Text('This feature will be coming soon!'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Ok', style: TextStyle(color: Colors.black),),
                          )
                        ],
                      );
                    }
                  );
                },
              ),
            ),
        )
      ],
    );
  }

  //Selanjutnya buatlah fungsi _buildAndroid() dan _buildIos()untuk menampilkan AppBar dan List.
  Widget _buildAndroid(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Settings'),
      ),
      child: _buildList(context),
    );
  }
}