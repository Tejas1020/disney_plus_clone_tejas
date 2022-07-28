import 'package:flutter/material.dart';

class NewToDisneyPlus {
  String movieName;
  String image;

  NewToDisneyPlus({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  NewToDisneyPlus.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<NewToDisneyPlus> newToDisneyPlus = [
  NewToDisneyPlus(
    movieName: "Santa Evita",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsanta_evita.jpg?alt=media&token=b8c08d6e-cd77-4e25-90b4-e4fcdf2cc4b0",
  ),
  NewToDisneyPlus(
    movieName: "In the Soop",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fice_adventures.jpeg?alt=media&token=20045f99-9d09-4a09-b357-4866e3264a47",  ),
  NewToDisneyPlus(
    movieName: "Enchanto",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fenchanto.jpeg?alt=media&token=3e78f7e7-d059-47fe-a502-05fbc15464d8",
  ),
  NewToDisneyPlus(
    movieName: "Harmonius Live",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fharmonius%20live.jpg?alt=media&token=467760f0-dec3-43b6-a0c7-dab51fe9983e",  ),
  NewToDisneyPlus(
    movieName: "Disney Originals : Polar Bear",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FPolar-Bear.jpg?alt=media&token=b0aaf75b-a8f2-4d6d-8254-ba06b0f9c096",
  ),
  NewToDisneyPlus(
    movieName: "Zombies 3",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fzombies_3.jpeg?alt=media&token=f99be3aa-67d4-4211-811c-2ba583e41412",
  ),
  NewToDisneyPlus(
    movieName: "Spider-Man : HomeComing",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman_homecoing.jpg?alt=media&token=f9a9b271-acab-4d48-a73e-b5753f8b3131",
  ),
  NewToDisneyPlus(
    movieName: "America The Beautiful",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Famerica_beautiful.jpg?alt=media&token=b8e31b15-3dbb-419e-89ef-be5c0ce6b376",
  ),
  NewToDisneyPlus(
    movieName: "Ms Marvel",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fms_marvel.jpg?alt=media&token=f0a69d15-caa1-4399-9827-3bf2a181a0a1",
  ),
  NewToDisneyPlus(
    movieName: "Doctor Strange Multiverse of Madness",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdoctor_strange.jpeg?alt=media&token=1bc4086b-6c0c-4e76-8d8e-3284cfc67b66",
  ),
  NewToDisneyPlus(
    movieName: "Moon Kinght",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmoon_knight.jpg?alt=media&token=bad49424-9542-43f8-a39e-e0020ec38fd9",
  ),
  NewToDisneyPlus(
    movieName: "Man Women Dog",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fman_women_dog.jpg?alt=media&token=8a948d9f-91f1-4e19-8d33-cf18569e91a5",
  ),
];

class NewToDisneyPlusBar extends StatelessWidget {
  const NewToDisneyPlusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: recommedList());
  }

  Widget recommedList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newToDisneyPlus.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final newToDisney = newToDisneyPlus[index];
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
                      tag: newToDisney.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          newToDisney.image,
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
