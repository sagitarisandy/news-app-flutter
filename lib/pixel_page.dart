import 'package:flutter/material.dart';
import 'package:project/data/strings.dart';
import 'package:project/styles.dart';

class PixelPage extends StatelessWidget {
  static const routeName = '/pixel_page';
  const PixelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              leadingWidth: 56, // Atur lebar leading agar tidak terlalu sempit
              leading: Padding(
                padding: const EdgeInsets.all(8.0), // Tambahkan padding di sini
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop(); // Tombol kembali
                  },
                ),
              ),
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var top = constraints.biggest.height;
                  bool isScrolledEnough = top < 120; // Atur kondisi scroll

                  return FlexibleSpaceBar(
                    background: Image.asset(
                      'assets/pixel_google.jpg',
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      'Google Pixel',
                      style: TextStyle(
                        color: isScrolledEnough ? Colors.black : Colors.white, // Kondisi warna berubah
                      ),
                    ),
                    titlePadding: const EdgeInsets.only(left: 72, bottom: 16), // Tambahkan jarak untuk title
                  );
                },
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r'$735',
                      style:  Theme.of(context).textTheme.headlineMedium,
                    ),
                    Container(
                      color: Colors.black26,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.collections,
                            color: Colors.white,
                          ),
                          Text(
                            '6 Photos',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8,),
                Text(
                  'Stock hanya 5 Buah',
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(height: 8),
                const Text(contentText),
                const SizedBox(height: 8),
                Table(
                  columnWidths: const {1: FractionColumnWidth(0.7)},
                  children: const [
                    TableRow(
                      children: [
                        Text('Display'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(contentSpecsDisplay),
                        )
                      ]
                    ),
                    TableRow(
                      children: [
                        Text('Size'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(contentSpecsSize),
                        )
                      ]
                    ),
                    TableRow(
                      children: [
                        Text('Battery'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(contentSpecsBattery),
                        )
                      ]
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                'Dijual Oleh',
                style: Theme.of(context).textTheme.subtitle1, 
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/photo_2.jpg'),
                        radius: 24,
                      ),
                    ),
                    Text(
                      'Nareda Wicaksono',
                      style: Theme.of(context).textTheme.bodyLarge,
                      ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      foregroundColor: primaryColor,
                      // shape: const BeveledRectangleBorder(
                      //   borderRadius: BorderRadius.all(
                      //     Radius.circular(8)
                      //   )
                      // )
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Added to Cart'),
                        )
                      );
                    },
                    child: const Text('Beli'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

