import 'package:flutter/material.dart';

class ActorUtil extends StatelessWidget {
  final String image;
  const ActorUtil({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 90,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(image,
          fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
