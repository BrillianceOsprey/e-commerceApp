import 'package:baby_boss/widgets/feeds_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //     StaggeredGridView.countBuilder(
          //   crossAxisCount: 6,
          //   itemCount: 8,
          //   itemBuilder: (BuildContext context, int index) => new FeedProducts(),
          //   staggeredTileBuilder: (int index) =>
          //       new StaggeredTile.count(3, index.isEven ? 4 : 5),
          //   mainAxisSpacing: 8.0,
          //   crossAxisSpacing: 6.0,
          // )
          GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 250 / 290,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(100, (index) => FeedProducts()),
      ),
    );
  }
}
