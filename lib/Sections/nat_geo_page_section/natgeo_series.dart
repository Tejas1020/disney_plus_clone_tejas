import 'package:flutter/material.dart';

class NatGeoSeries {
  String movieName;
  String image;

  NatGeoSeries({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  NatGeoSeries.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<NatGeoSeries> natGeoSeries = [
  NatGeoSeries(
    movieName: "Man women Dog",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fman_women_dog.jpg?alt=media&token=8a948d9f-91f1-4e19-8d33-cf18569e91a5",
  ),
  NatGeoSeries(
    movieName: "Called to the Wild",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcall%20of%20wild.jpg?alt=media&token=fea3b653-0145-47ec-bfd9-a4904242933d",
  ),
  NatGeoSeries(
    movieName: "Brain games",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbraingames.jpg?alt=media&token=fa177cc4-b344-4ed7-bc3f-dab2226a403b",
  ),
  NatGeoSeries(
    movieName: "Brain game on Road",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbrain_game_on_road.jpg?alt=media&token=05e0b03f-9289-44c3-8f3b-7945751eda8d",
  ),
  NatGeoSeries(
    movieName: "Shark Night",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fshark_nights.jpg?alt=media&token=62d0b240-bf6d-45e9-a644-3b742578ce4c",
  ),
  NatGeoSeries(
    movieName: "One for Change",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fone_for_change.jpg?alt=media&token=c96ca568-cc21-441a-8857-94bb56deb864",
  ),
  NatGeoSeries(
    movieName: "Snake SOS",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsnake_sos.jpg?alt=media&token=361027a3-fbc1-4ddd-a144-a743d7752934",
  ),
  NatGeoSeries(
    movieName: "Welcome to Earth",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwelcome_earth.jpg?alt=media&token=8b18957c-1fd1-4ba0-b524-81c85b1421ad",
  ),
  NatGeoSeries(
    movieName: "Monster Croc Wrangler",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmonster_croc.jpg?alt=media&token=f4ca407c-fc56-467c-a602-e8fef732fe5f",
  ),
  NatGeoSeries(
    movieName: "Growing up animal",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fgrowing%20up%20animal.jpg?alt=media&token=298b0b0b-783d-4e85-84b7-330db484152f",
  ),
  NatGeoSeries(
    movieName: "World According to jeff",
    image:
        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fworld_jeff.jpg?alt=media&token=ec557910-8f41-4202-b161-a6eff76c76e8",
  ),
];

class NatGeoSeriesBar extends StatelessWidget {
  const NatGeoSeriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: natGeoSeries.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final natGeoSerie = natGeoSeries[index];
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
                      tag: natGeoSerie.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          natGeoSerie.image,
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
