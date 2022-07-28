import 'package:flutter/material.dart';

class WaltDisney {
  String movieName;
  String image;

  WaltDisney({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  WaltDisney.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<WaltDisney> waltDisney = [
  WaltDisney(
    movieName: "Enchanto",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fenchanto.jpeg?alt=media&token=3e78f7e7-d059-47fe-a502-05fbc15464d8",
  ),
  WaltDisney(
    movieName: "Raya",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fraya.jpg?alt=media&token=90ab89bc-2170-4f0f-929d-e7477470ee71",
  ),
  WaltDisney(
    movieName: "Baymax",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FBaymax.jpg?alt=media&token=eea3acd2-4c25-4dd0-979d-40c48c9164c3",
  ),
  WaltDisney(
    movieName: "The Princess and the Frog",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fprincess_frog.jpg?alt=media&token=0b4adb99-f420-4e9a-8e85-c1415533cdad",
  ),
  WaltDisney(
    movieName: "Jungle Book",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fjungle_book.jpg?alt=media&token=44da98a7-71a7-4de9-a562-126a616c5770",
  ),
  WaltDisney(
    movieName: "Cinderella",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcinderella_1.jpg?alt=media&token=c18b508b-15ce-48a9-a259-9385b3000a3d",
  ),
  WaltDisney(
    movieName: "Tarzen",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftarzen.jpg?alt=media&token=68089ab5-a2e0-44ae-846d-aa726e3c5bdc",
  ),
  WaltDisney(
    movieName: "Moana",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmoana.jpg?alt=media&token=17fa3906-742e-4d56-8dfe-1c0fe70131e7",
  ),
  WaltDisney(
    movieName: "Frozen 2",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffrozen2.jpeg?alt=media&token=ed0dd7bd-81b3-44d7-97c4-275af023d201",
  ),
  WaltDisney(
    movieName: "Beauty and the Beast",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbeauty_beast.jpg?alt=media&token=4047204e-eacd-41f1-b5db-e2f2ef545a2b",
  ),
  WaltDisney(
    movieName: "Big Hero 6",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbig_hero_6.jpeg?alt=media&token=4331225f-4831-4a6a-86df-85b4df871a18",
  ),
];

class WaltDisneyMovies extends StatelessWidget {
  const WaltDisneyMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: recommedList());
  }

  Widget recommedList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: waltDisney.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final waltDisneyMovies = waltDisney[index];
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
                      tag: waltDisneyMovies.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          waltDisneyMovies.image,
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
