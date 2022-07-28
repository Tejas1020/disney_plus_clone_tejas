import 'package:flutter/material.dart';

class DisneyPlusOriginal {
  String movieName;
  String image;

  DisneyPlusOriginal({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  DisneyPlusOriginal.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<DisneyPlusOriginal> disneyPlusOriginals = [
  DisneyPlusOriginal(
    movieName: "Zomebies 3",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fzombies_3.jpeg?alt=media&token=f99be3aa-67d4-4211-811c-2ba583e41412",
  ),
  DisneyPlusOriginal(
    movieName: "Rise",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frise.jpg?alt=media&token=065d5c06-e4af-4463-a5bb-b75e2c0f9868",
  ),
  DisneyPlusOriginal(
    movieName: "Beyond Infinity",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbeyond_infity.jpeg?alt=media&token=2d686af6-628a-4804-8248-ec77a01d5845",
  ),
  DisneyPlusOriginal(
    movieName: "Kenobi",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fkenobi.jpg?alt=media&token=1b12c6f3-b1ec-449f-bd12-5fea096d227f",  ),
  DisneyPlusOriginal(
    movieName: "The Mandalorian",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmandalorian.jpg?alt=media&token=f2c43b2c-4934-47ef-be67-abedf8308c19",
  ),
  DisneyPlusOriginal(
    movieName: "Turning Red",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fturning_red.jpg?alt=media&token=17fbc35d-ba63-4c22-b7c1-2b45807cde17",
  ),
  DisneyPlusOriginal(
    movieName: "Boba Fett",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fboba_fett.jpg?alt=media&token=4c93934e-294f-44fd-bd63-4677fdd4ddf4",
  ),
  DisneyPlusOriginal(
    movieName: "Ice Age adeventures of buck wild",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fice_adventures.jpeg?alt=media&token=20045f99-9d09-4a09-b357-4866e3264a47",
  ),
  DisneyPlusOriginal(
    movieName: "Moon Kinght",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmoon_knight.jpg?alt=media&token=bad49424-9542-43f8-a39e-e0020ec38fd9",
  ),
  DisneyPlusOriginal(
    movieName: "Ms Marvel",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fms_marvel.jpg?alt=media&token=f0a69d15-caa1-4399-9827-3bf2a181a0a1",
  ),
  DisneyPlusOriginal(
    movieName: "America the Beautiful",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Famerica_beautiful.jpg?alt=media&token=b8e31b15-3dbb-419e-89ef-be5c0ce6b376",
  ),
];

class DisneyPlusOriginals extends StatelessWidget {
  const DisneyPlusOriginals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: disneyPlusOriginals.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final disneyplusOriginals = disneyPlusOriginals[index];
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
                      tag: disneyplusOriginals.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          disneyplusOriginals.image,
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
