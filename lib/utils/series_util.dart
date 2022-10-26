import 'package:flutter/material.dart';

class SeriesUtil extends StatelessWidget {
  const SeriesUtil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network("https://terrigen-cdn-dev.marvel.com/content/prod/1x/clover_teaser_printed_1sht_v2_lg.jpg",
            fit: BoxFit.cover,
            width: itemWidth,
            height: 200,),
        ),
        SizedBox(height: 8,),
        Text("She-Hulk: Attorney at Law",textAlign: TextAlign.center, style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold, fontSize: 18),),
        Text("Episode 5", style: TextStyle(color: Colors.white70,
            fontSize: 15),),
      ],
    );
  }
}
