import 'package:flutter/material.dart';

class StarWarsSeries {
  String movieName;
  String image;

  StarWarsSeries({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  StarWarsSeries.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<StarWarsSeries> starWarsSeries = [
  StarWarsSeries(
    movieName: "Kenobi",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fkenobi.jpg?alt=media&token=1b12c6f3-b1ec-449f-bd12-5fea096d227f",
  ),
  StarWarsSeries(
    movieName: "Boba Fett",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fboba_fett.jpg?alt=media&token=4c93934e-294f-44fd-bd63-4677fdd4ddf4",
  ),
  StarWarsSeries(
    movieName: "Visions",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fvision.jpg?alt=media&token=f8975ec4-1eb6-4f74-aafb-d84f7081026a",
  ),
  StarWarsSeries(
    movieName: "Bad Batch",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fad_batch.jpg?alt=media&token=cde6d671-cc06-461a-a56b-936f959770c0",
  ),
  StarWarsSeries(
    movieName: "Mandolorian",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmandalorian.jpg?alt=media&token=f2c43b2c-4934-47ef-be67-abedf8308c19",
  ),
  StarWarsSeries(
    movieName: "Galaxy of Sounds",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fgalaxy%20of%20sounds.jpg?alt=media&token=9048b53c-a254-48bf-8550-3fa61659d6c5",
  ),
  StarWarsSeries(
    movieName: "Clone Wars",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fclone%20wars.jpg?alt=media&token=d476d1f3-a7a2-4ba6-a015-30931ea9e3cc",
  ),
  StarWarsSeries(
    movieName: "Gallery",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fgallery%201.jpg?alt=media&token=4f51c609-637b-4310-b7de-bc08d067deba",
  ),
];

class StarWarsSeriesBar extends StatelessWidget {
  const StarWarsSeriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: starWarsSeries.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final starWarsSerie = starWarsSeries[index];
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
                      tag: starWarsSerie.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          starWarsSerie.image,
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
