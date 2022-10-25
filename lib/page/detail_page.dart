import 'package:flutter/material.dart';
import 'package:movie_app/utils/actor_util.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list_actor = [
      "https://asset.tix.id/wp-content/uploads/2022/07/kuqFzlYMc2IrsOyPznMd1FroeGq-100x100.jpg",
      "https://asset.tix.id/wp-content/uploads/2022/10/jPpnaAGFXaIeOrRNUHIHxk3fIJL-100x100.jpg",
      "https://asset.tix.id/wp-content/uploads/2022/10/dzXVwwJLPwiZeXOnf7YxorqVEEM-100x100.jpg",
      "https://asset.tix.id/wp-content/uploads/2022/10/p1bcst401RyxfDGykx2iQLI7CV5-100x100.jpg",
      "https://asset.tix.id/wp-content/uploads/2022/10/66903sgNtyzHN0Mi3D88UYgbH86-100x100.jpg",
      "https://asset.tix.id/wp-content/uploads/2022/10/xKUFfFJR6o5Ka7AmetGMYjSmBGO-100x100.jpg"
    ];

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Image.network("https://image.tmdb.org/t/p/w185/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
                      fit: BoxFit.cover,height: double.infinity,
                        width: double.infinity,),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(Icons.keyboard_arrow_left_outlined,
                            size: 50,),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(color: Colors.transparent),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(5),
                            child: const Text(
                              "P-13",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.all(5),
                            child: const Text(
                              "Action",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.add_box_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.send,
                            size: 35,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Text(
                  "Black Adam (2022)",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Text(
                  "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods-and imprisoned just as quickly-Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Text(
                  "Actor",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list_actor.length,
                      itemBuilder: (context, index) {
                        return ActorUtil(
                          image: list_actor[index],
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
