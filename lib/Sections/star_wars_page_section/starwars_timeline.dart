import 'package:flutter/material.dart';

class StarWarsTimeline {
  String movieName;
  String image;

  StarWarsTimeline({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  StarWarsTimeline.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<StarWarsTimeline> starWarsTimeline = [
  StarWarsTimeline(
    movieName: "Phantom Menance",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fphantom%20menance.jpg?alt=media&token=34f2c0c1-587e-43f5-af9a-f5cf4ced7e05",
  ),
  StarWarsTimeline(
    movieName: "Attack of Clones",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fattack%20of%20clones.jpg?alt=media&token=ffd294b4-d858-42a3-9935-cb8a30cc3f7b",
  ),
  StarWarsTimeline(
    movieName: "Clone Wars",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fclone%20wars.jpg?alt=media&token=d476d1f3-a7a2-4ba6-a015-30931ea9e3cc",
  ),
  StarWarsTimeline(
    movieName: "Revenge of Sith",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frevenge%20of%20sith.jpg?alt=media&token=20746374-8bb5-401a-ac65-f10bbe7b7ec0",
  ),
  StarWarsTimeline(
    movieName: "Kenobi",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fkenobi.jpg?alt=media&token=1b12c6f3-b1ec-449f-bd12-5fea096d227f",
  ),
  StarWarsTimeline(
    movieName: "Bad batch",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fad_batch.jpg?alt=media&token=cde6d671-cc06-461a-a56b-936f959770c0",
  ),
  StarWarsTimeline(
    movieName: "Solo Star Wars",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsolo_star%20wars.jpg?alt=media&token=c60b1bdb-a652-4230-9181-3cf544a81623",
  ),
  StarWarsTimeline(
    movieName: "Rough One",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frough%20one.jpg?alt=media&token=b6d524ed-a26d-4414-842e-b17a809c59ab",
  ),
  StarWarsTimeline(
    movieName: "New Hope",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fnew_hope.jpg?alt=media&token=9f2ba31a-e19f-4b34-af31-acc3ee1a3312",
  ),
  StarWarsTimeline(
    movieName: "Mandolorian",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmandalorian.jpg?alt=media&token=f2c43b2c-4934-47ef-be67-abedf8308c19",
  ),
  StarWarsTimeline(
    movieName: "Boba Fett",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fboba_fett.jpg?alt=media&token=4c93934e-294f-44fd-bd63-4677fdd4ddf4",
  ),
];

class StarWarsTimelineBar extends StatelessWidget {
  const StarWarsTimelineBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: starWarsTimeline.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final starWarsTime = starWarsTimeline[index];
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
                      tag: starWarsTime.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          starWarsTime.image,
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
