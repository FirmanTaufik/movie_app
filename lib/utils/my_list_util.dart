import 'package:flutter/material.dart';

import '../page/detail_page.dart';

class MyListUtil extends StatelessWidget {
  const MyListUtil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://image.tmdb.org/t/p/w185/e3NBGiAifW9Xt8xD5tpARskjccO.jpg",
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Captain America", style: TextStyle(color :Colors.white, fontSize: 18,
                    fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8,),
                Text("Action, Adventure", style: TextStyle(color :Colors.white, fontSize: 15, ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage() ));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
                        decoration: BoxDecoration(
                            color: Colors.pink[500], borderRadius: BorderRadius.circular(10)),
                        child: Text("Watch Now", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
