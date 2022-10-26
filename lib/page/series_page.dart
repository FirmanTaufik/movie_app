import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_app/utils/series_util.dart';

import '../models/series_model.dart';

class SeriesPage extends StatelessWidget {
    SeriesPage({Key? key}) : super(key: key);
  List<SeriesModel> seriesList = [
    new SeriesModel("Andor",
        "Episode 2",
        "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/5461/1355461-v-00db75e13a30"),
    new SeriesModel("She-Hulk: Attorney at Law",
        "Episode 5",
        "https://terrigen-cdn-dev.marvel.com/content/prod/1x/clover_teaser_printed_1sht_v2_lg.jpg"),
    new SeriesModel("The Walking Dead",
        "Episode 3",
        "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/815/1050815-h-2f5a958c4ab8"),
    new SeriesModel("The Walking Dead",
        "Episode 3",
        "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/815/1050815-h-2f5a958c4ab8"),
    new SeriesModel("She-Hulk: Attorney at Law",
        "Episode 5",
        "https://terrigen-cdn-dev.marvel.com/content/prod/1x/clover_teaser_printed_1sht_v2_lg.jpg"),
    new SeriesModel("The Walking Dead",
        "Episode 3",
        "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/815/1050815-h-2f5a958c4ab8")
  ];
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
      itemCount:seriesList.length,
      itemBuilder: (BuildContext context, int index) =>
          SeriesUtil(seriesModel: seriesList[index],),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
    );
  }
}
