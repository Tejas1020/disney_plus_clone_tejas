import 'package:flutter/material.dart';

class HitMovies {
  String movieName;
  String image;

  HitMovies({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  HitMovies.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<HitMovies> hitMovies = [
  HitMovies(
    movieName: "Shangi Chi",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fshang_chi.jpg?alt=media&token=ff6df66e-f496-406a-9038-44bbbae96082",
  ),
  HitMovies(
    movieName: "Frozen 2",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffrozen2.jpeg?alt=media&token=ed0dd7bd-81b3-44d7-97c4-275af023d201",
  ),
  HitMovies(
    movieName: "Cruella",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcruella.jpeg?alt=media&token=0171ef2a-6b69-4a4b-95ed-5de795bef64e",
  ),
  HitMovies(
    movieName: "Luca",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fluca.jpeg?alt=media&token=4541db4b-472d-4e4b-a997-b05be2645c34",
  ),
  HitMovies(
    movieName: "Eternals",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Feternals.jpeg?alt=media&token=6ccb641c-e495-4352-819c-78ce3880d826",
  ),
  HitMovies(
    movieName: "Soul",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsoul.jpeg?alt=media&token=6a7e8707-0870-464e-91b6-0db4976e665e",
  ),
  HitMovies(
    movieName: "Mulan",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FMulan.png?alt=media&token=1a5720e9-7c2e-4946-b1a5-074005d5024a",
  ),
  HitMovies(
    movieName: "Enchanto",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fenchanto.jpeg?alt=media&token=3e78f7e7-d059-47fe-a502-05fbc15464d8",
  ),
  HitMovies(
    movieName: "Avengers Endgame",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Favengers_endgame.jpg?alt=media&token=55a39220-4363-4a40-bed4-b7d276d837bc",
  ),
  HitMovies(
    movieName: "Dark Phoenix",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdark_pehonex.jpg?alt=media&token=156aa699-ec29-471f-b183-ddece4e555e6",
  ),
];

class HitMoviesDisney extends StatelessWidget {
  const HitMoviesDisney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 2.2,
      child: buildList(),
    );
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hitMovies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final HitMovies = hitMovies[index];
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
                      tag: HitMovies.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          HitMovies.image,
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
