import 'package:flutter/material.dart';

class DisneyLiveAction {
  String movieName;
  String image;

  DisneyLiveAction({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  DisneyLiveAction.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<DisneyLiveAction> disneyLiveAction = [
  DisneyLiveAction(
    movieName: "Jungle Cruise",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fjugle_cruise.jpg?alt=media&token=b7e26e84-c060-4ffa-acc3-acc38782582e",
  ),
  DisneyLiveAction(
    movieName: "Home Sweet Alone",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhome_sweet_home.jpeg?alt=media&token=964c28d7-3111-466f-a544-bd728007c16c",
  ),
  DisneyLiveAction(
    movieName: "Cruella",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcruella.jpeg?alt=media&token=0171ef2a-6b69-4a4b-95ed-5de795bef64e",
  ),
  DisneyLiveAction(
    movieName: "Aladin",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Faladin.jpg?alt=media&token=37efcded-cc1f-4b32-97d9-8a9853ef6fc0",
  ),
  DisneyLiveAction(
    movieName: "Lion King",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Flion%20king.jpg?alt=media&token=5f308335-5ced-46de-9677-68ed3e0bb2f6",
  ),
  DisneyLiveAction(
    movieName: "Spin",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspin.jpg?alt=media&token=87ec0e63-003b-47da-95f3-8b2cd96c3a48",
  ),
  DisneyLiveAction(
    movieName: "Flora and Ulysses",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fflora_ulysses.jpg?alt=media&token=ba171fe4-1063-43ca-b33b-92ac7af8e6ad",
  ),
  DisneyLiveAction(
    movieName: "Mulan",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FMulan.png?alt=media&token=1a5720e9-7c2e-4946-b1a5-074005d5024a",
  ),
  DisneyLiveAction(
    movieName: "Safety",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsafety.jpg?alt=media&token=4dd3aea7-9520-4944-bf96-e5b42d39a885",
  ),
  DisneyLiveAction(
    movieName: "High School Musical",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhigh_school.jpg?alt=media&token=d3d3ff0d-a3bd-4e47-8f51-c8a52d38b2ea",
  ),
  DisneyLiveAction(
    movieName: "GodMothered",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fgod_mother.jpg?alt=media&token=7013490e-20b6-4c14-a5b5-57f2547b42ea",
  ),
];

class DisneyLiveActionMovies extends StatelessWidget {
  const DisneyLiveActionMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: recommedList());
  }

  Widget recommedList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: disneyLiveAction.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final disneyLiveActionMovies = disneyLiveAction[index];
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
                      tag: disneyLiveActionMovies.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          disneyLiveActionMovies.image,
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
