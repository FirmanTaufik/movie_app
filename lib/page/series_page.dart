import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_app/utils/series_util.dart';

class SeriesPage extends StatelessWidget {
  const SeriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 15) / 2;
    final double itemWidth = size.width / 2;
    return StaggeredGridView .countBuilder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(12.0),
      crossAxisCount: 4,
      mainAxisSpacing: 24,
      crossAxisSpacing: 12,
      itemCount:10,
      itemBuilder: (BuildContext context, int index) =>
          SeriesUtil(),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
    );
  }
}
