import 'package:flutter/material.dart';

class NatGeoOriginals {
  String movieName;
  String image;

  NatGeoOriginals({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  NatGeoOriginals.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<NatGeoOriginals> natGeoOriginal = [
    NatGeoOriginals(
    movieName:"Brain Games" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbraingames.jpg?alt=media&token=fa177cc4-b344-4ed7-bc3f-dab2226a403b" ,
  ),
    NatGeoOriginals(
    movieName:"Biggest Little Farm" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbiggest_farm.jpg?alt=media&token=efd66920-5597-4542-97c1-2eb18851bd60" ,
  ),
    NatGeoOriginals(
    movieName: "America The Beautiful", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Famerica_beautiful.jpg?alt=media&token=b8e31b15-3dbb-419e-89ef-be5c0ce6b376",
  ),
    NatGeoOriginals(
    movieName:"The Last Tepui" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Flast_tepui.jpg?alt=media&token=c8a33cb6-734e-4bff-b773-9d28905664f6",
  ),
    NatGeoOriginals(
    movieName: "The Rescue", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frescue.jpeg?alt=media&token=b0d51ac8-30ec-4103-b2f8-4fd38e0361b7",
  ),
    NatGeoOriginals(
    movieName: "World According to Jeff", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fworld_jeff.jpg?alt=media&token=ec557910-8f41-4202-b161-a6eff76c76e8",
  ),
    NatGeoOriginals(
    movieName:"Fauci" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffauci.jpg?alt=media&token=4008d572-d57e-443e-b7de-5c5f3e63a2ea",
  ),
    NatGeoOriginals(
    movieName: "Growing Up Animal", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fgrowing%20up%20animal.jpg?alt=media&token=298b0b0b-783d-4e85-84b7-330db484152f",
  ),
    NatGeoOriginals(
    movieName: "Earth Moods", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fearth_moods.jpg?alt=media&token=69a08672-7a79-4ec4-aebf-f2f1c3ee57df",
  ),
    NatGeoOriginals(
    movieName:"Own the Rooms" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fown_room.jpg?alt=media&token=07d1d128-9cf8-44ee-b268-53cd9ff23f83" ,
  ),
    NatGeoOriginals(
    movieName: "Real Right Stuff", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Freal_right_stuff.jpg?alt=media&token=b1f42b6d-0f3c-4532-b448-b137a254905f" ,
  ),
];

class NatGeoOriginalsBar extends StatelessWidget {
  const NatGeoOriginalsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: natGeoOriginal.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final natGeoOriginals = natGeoOriginal[index];
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
                      tag: natGeoOriginals.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          natGeoOriginals.image,
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
