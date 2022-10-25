import 'package:flutter/material.dart';
import 'package:movie_app/utils/category_util.dart';
import 'package:movie_app/utils/trending_util.dart';

import '../models/trend_model.dart';

class FilmPage extends StatelessWidget {

    FilmPage({Key? key}) : super(key: key);

  var listCategory = [
    "All",
    "Action",
    "Comedy",
    "Romace",
    "Fantasy",
    "Fantasy",
    "Fantasy",
    "Fantasy",
    "Fantasy",
    "Fantasy",
    "Fantasy",
    "Fantasy",
    "Fantasy",
    "Fantasy"
  ];

  List<TrendingModel> listTrend = [
    new TrendingModel(
        "House of the Dragon (2022)",
        "https://image.tmdb.org/t/p/w185/z2yahl2uefxDCl0nogcRBstwruJ.jpg",
        "Drama",
        "7.0",
        "P13"),
    new TrendingModel(
        "Black Adam (2022)",
        "https://image.tmdb.org/t/p/w185/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
        "Action",
        "8.7",
        "PG-13"),
    new TrendingModel(
        "House of the Dragon (2022)",
        "https://image.tmdb.org/t/p/w185/z2yahl2uefxDCl0nogcRBstwruJ.jpg",
        "Drama",
        "7.0",
        "P13"),
    new TrendingModel(
        "House of the Dragon (2022)",
        "https://image.tmdb.org/t/p/w185/z2yahl2uefxDCl0nogcRBstwruJ.jpg",
        "Drama",
        "7.0",
        "P13"),
    new TrendingModel(
        "House of the Dragon (2022)",
        "https://image.tmdb.org/t/p/w185/z2yahl2uefxDCl0nogcRBstwruJ.jpg",
        "Drama",
        "7.0",
        "P13"),
  ];
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Coming Soon",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 400,
                height: 200,
                child: Image.network(
                  "https://image.tmdb.org/t/p/w185/e3NBGiAifW9Xt8xD5tpARskjccO.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 40,
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCategory.length,
                itemBuilder: (context, index) {
                  return CategoryUtil(name: listCategory[index]);
                }),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Trending Now",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          height: 400,
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listTrend.length,
                itemBuilder: (context, index) {
                  return TrendingUtil(
                    listTrend: listTrend[index],
                  );
                }),
          ),
        )
      ],
    );
  }
}
