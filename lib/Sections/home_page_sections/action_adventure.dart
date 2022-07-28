import 'package:flutter/material.dart';

class ActionAdventure {
  String movieName;
  String image;

  ActionAdventure({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  ActionAdventure.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<ActionAdventure> actionAventure = [
  ActionAdventure(
    movieName: "Iron Fist",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_fist.jpg?alt=media&token=5f4c237e-9cda-4546-a8a6-3393da2a95e1",
  ),
  ActionAdventure(
    movieName: "Spiderman Homecoming",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman_homecoing.jpg?alt=media&token=f9a9b271-acab-4d48-a73e-b5753f8b3131",
  ),
  ActionAdventure(
    movieName: "Venom",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fvenom.jpg?alt=media&token=3ac8cd26-beca-4e97-a3cf-e6ea2a4a29a9",
  ),
  ActionAdventure(
    movieName: "Hawkeye",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhawkeye.jpg?alt=media&token=505bbbbd-4bdb-437a-8576-4fd22e81b538",
  ),
  ActionAdventure(
    movieName: "Falcon and the Winter Soldier",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffalcon_winter_soldier.png?alt=media&token=8347d800-28b1-4876-ba57-f07bc1080779",
  ),
  ActionAdventure(
    movieName: "The Amazing Spiderman",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Famazing_spiderman.jpg?alt=media&token=50df83b4-02e4-4f48-90ab-9190d42c8307",
  ),
  ActionAdventure(
    movieName: "Spiderman 2",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman_2.jpg?alt=media&token=526ddb7c-8a96-4c86-8835-19f322f88e73",
  ),
  ActionAdventure(
    movieName: "Jessica Jones",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fjessica_jones.jpg?alt=media&token=67d66f35-1afa-4d38-832b-9e46481a0909",
  ),
  ActionAdventure(
    movieName: "Kenobi",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fkenobi.jpg?alt=media&token=1b12c6f3-b1ec-449f-bd12-5fea096d227f",  ),
  ActionAdventure(
    movieName: "Black Widow",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fblack_widow.jpeg?alt=media&token=a14db5de-1892-4a57-a351-ea54d620fcfb",
  ),
  ActionAdventure(
    movieName: "what if",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwhat_if.jpg?alt=media&token=182950e8-3e96-4e62-968c-4681f5222e74",
  ),
];

class ActionAndAdventure extends StatelessWidget {
  const ActionAndAdventure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: actionAventure.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final actionAndAdventure = actionAventure[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(3),
              // margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Hero(
                      tag: actionAndAdventure.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          actionAndAdventure.image,
                          height: 1000,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
}
