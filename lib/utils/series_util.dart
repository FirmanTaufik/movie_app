import 'package:flutter/material.dart';
import 'package:movie_app/models/series_model.dart';

import '../page/detail_page.dart';

class SeriesUtil extends StatelessWidget {
  final SeriesModel seriesModel;
  const SeriesUtil({Key? key, required this.seriesModel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage() ));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network( seriesModel.image,
              fit: BoxFit.cover,
              width: itemWidth,
              height: 200,),
          ),
          SizedBox(height: 8,),
          Text(seriesModel.judul,textAlign: TextAlign.center, style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 18,),maxLines: 1,
            overflow: TextOverflow.ellipsis,),
          Text(seriesModel.episode, style: TextStyle(color: Colors.white70,
              fontSize: 15),),
        ],
      ),
    );
  }
}
