import 'package:flutter/material.dart';
import 'package:movie_app/page/series_page.dart';
import 'package:movie_app/utils/category_util.dart';
import 'package:movie_app/utils/trending_util.dart';

import '../models/trend_model.dart';
import 'film_page.dart';
import 'my_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List <Widget> layoutWidget = <Widget>[
    SeriesPage(),
    FilmPage(),
    MyListPage()

  ];

  var nowPage =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap:  () {
                    setState(() {
                      nowPage=0;
                    });
                  },
                  child: Text(
                    "Series",
                    style: TextStyle(
                        color:  nowPage==0? Colors.red: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap:  () {
                    setState(() {
                      nowPage=1;
                    });
                  },
                  child: Text(
                    "Film",
                    style: TextStyle(
                        color:  nowPage==1? Colors.red: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap:  () {
                    setState(() {
                      nowPage=2;
                    });
                  },
                  child: Text(
                    "My List",
                    style: TextStyle(
                        color:  nowPage==2? Colors.red: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 22,
                  ),

                  layoutWidget[nowPage]
                  ,
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
