import 'package:flutter/material.dart';
import 'package:movie_app/utils/my_list_util.dart';

import 'detail_page.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return MyListUtil();
        });
  }
}
