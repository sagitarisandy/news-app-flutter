import 'package:flutter/material.dart';
import 'package:project/widget-design/latihan-silver-list/academy.dart';

class LearningPathPage extends StatelessWidget {
  static const routeName = '/learning_path_page.dart';
  const LearningPathPage({Key? key}) : super (key:  key);

  // SliverPersistentHeader _header(String text) {
  //   return SliverPersistentHeader(
  //     pinned: true,
  //     delegate: SliverAppBarDelegate(
  //       minHeight: 60,
  //       maxHeight: 150,
  //       child: Container(
  //         color: Colors.lightBlue,
  //         child: Center(
  //           child: Text(
  //             text,
  //             style: const TextStyle(color: Colors.white),
  //           ),
  //         ),
  //       )
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learning Paths'
        ),
      ),
      body: const LearningPathList(),
    );
  }
}

class LearningPathList extends StatelessWidget {
  const LearningPathList({Key? key}) : super(key: key);

  SliverPersistentHeader _header(String text) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverAppBarDelegate(
        minHeight: 60,
        maxHeight: 150,
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _header('Android Developer'),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _buildTile(androidPaths[index]), // Pass Academy objects
            childCount: androidPaths.length,
          ),
        )
      ],
    );
  }

  Widget _buildTile(Academy academy) {
    return ListTile(
      title: Text(academy.title),
      subtitle: Text(academy.description),
    );
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return child;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight || child != oldDelegate.child;
  }
 
}