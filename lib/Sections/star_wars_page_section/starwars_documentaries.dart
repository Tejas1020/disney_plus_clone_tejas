import 'package:flutter/material.dart';

class StarWarsDocumentry {
  String movieName;
  String image;

  StarWarsDocumentry({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  StarWarsDocumentry.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<StarWarsDocumentry> starWarsDocumentry = [
  StarWarsDocumentry(
    movieName: "Under the Helmet",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Funder%20the%20helmet.jpg?alt=media&token=74f9d198-f35f-44c0-ae19-a0987fb29485",
  ),
  StarWarsDocumentry(
    movieName: "Gallery",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fgallery%201.jpg?alt=media&token=4f51c609-637b-4310-b7de-bc08d067deba",
  ),
  StarWarsDocumentry(
    movieName: "Gallery",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fgallery%202.jpg?alt=media&token=46c1bfd8-80e2-45ca-b193-11d9a3a13190",
  ),
];

class StarWarsDocumentryBar extends StatelessWidget {
  const StarWarsDocumentryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: starWarsDocumentry.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final starWarsdocumentries = starWarsDocumentry[index];
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
                      tag: starWarsdocumentries.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          starWarsdocumentries.image,
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
