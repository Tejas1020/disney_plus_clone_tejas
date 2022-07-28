import 'package:flutter/material.dart';

class Recommended {
  String movieName;
  String image;

  Recommended({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  Recommended.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<Recommended> recommended = [
  Recommended(
    movieName: "Doctor Strange Multiverse of Madness",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdoctor_strange.jpeg?alt=media&token=1bc4086b-6c0c-4e76-8d8e-3284cfc67b66",
  ),
  Recommended(
    movieName: "Ms Marvel",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fms_marvel.jpg?alt=media&token=f0a69d15-caa1-4399-9827-3bf2a181a0a1",
  ),
  Recommended(
    movieName: "Daredevil",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdaredevil.jpg?alt=media&token=7bfd146a-af38-4676-9549-b72b1826c8ca",
  ),
  Recommended(
    movieName: "Loki",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Floki.jpg?alt=media&token=40633548-bb57-4272-a23e-591994896496",
  ),
  Recommended(
    movieName: "Ford vs Ferrari",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fford_ferrari.jpg?alt=media&token=9467fab6-def9-4515-b48d-c89115cf179b",  ),
  Recommended(
    movieName: "Jungle Cruise",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fjugle_cruise.jpg?alt=media&token=b7e26e84-c060-4ffa-acc3-acc38782582e",  ),
  Recommended(
    movieName: "Eternals",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Feternals.jpeg?alt=media&token=6ccb641c-e495-4352-819c-78ce3880d826",  ),
  Recommended(
    movieName: "Hawkeye",
    image:
"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhawkeye.jpg?alt=media&token=505bbbbd-4bdb-437a-8576-4fd22e81b538",  ),
  Recommended(
    movieName: "Ratatouille",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fratatoulille.jpg?alt=media&token=d13c083c-d0f2-42cd-bcfe-7e8b713cd442",
  ),
  Recommended(
    movieName: "Shangi Chi",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fshang_chi.jpg?alt=media&token=ff6df66e-f496-406a-9038-44bbbae96082",
  ),
  Recommended(
    movieName: "Thor Ragnarok",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fthor_ragnork.jpg?alt=media&token=4d598bbe-27e6-4032-9004-e00f0691f017",
  ),
];

class RecommendationBar extends StatelessWidget {
  const RecommendationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: recommedList());
  }

  Widget recommedList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommended.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final recommendations = recommended[index];
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
                      tag: recommendations.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          recommendations.image,
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
