import 'package:flutter/material.dart';

class CategoryUtil extends StatelessWidget {
  final String name;
  const CategoryUtil({Key? key, required this.name,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:15 ),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.pink[500],
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          padding: EdgeInsets.all(10),
          child: Text(name, style:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
        ),
    );
  }
}
