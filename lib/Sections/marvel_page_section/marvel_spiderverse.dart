import 'package:flutter/material.dart';

class MarvelSpiderverse {
  String movieName;
  String image;

  MarvelSpiderverse({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  MarvelSpiderverse.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<MarvelSpiderverse> marvelSpiderverse = [
  MarvelSpiderverse(
    movieName: "Spider-Man 1 ",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman%201.jpg?alt=media&token=51970ab7-587a-4b26-926b-ba2a30568f74",
  ),
  MarvelSpiderverse(
    movieName: "Spider-Man 2",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman_2.jpg?alt=media&token=526ddb7c-8a96-4c86-8835-19f322f88e73",
  ),
  MarvelSpiderverse(
    movieName: "Spider-Man 3",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman%203.jpg?alt=media&token=c6c72298-2f3b-4d83-8f20-2e0d02c49219",
  ),
  MarvelSpiderverse(
    movieName: "Amazing Spider-Man",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Famazing_spiderman.jpg?alt=media&token=50df83b4-02e4-4f48-90ab-9190d42c8307",
  ),
  MarvelSpiderverse(
    movieName: "Spider-Man HomeComing",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman_homecoing.jpg?alt=media&token=f9a9b271-acab-4d48-a73e-b5753f8b3131",
  ),
  MarvelSpiderverse(
    movieName: "Venom",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fvenom.jpg?alt=media&token=3ac8cd26-beca-4e97-a3cf-e6ea2a4a29a9",
  ),
];

class MarvelSpiderverseBar extends StatelessWidget {
  const MarvelSpiderverseBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: marvelSpiderverse.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final marvelSpiderverses = marvelSpiderverse[index];
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
                      tag: marvelSpiderverses.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          marvelSpiderverses.image,
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
