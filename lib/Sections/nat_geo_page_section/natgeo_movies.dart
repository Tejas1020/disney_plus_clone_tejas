import 'package:flutter/material.dart';

class NatGeoMovies {
  String movieName;
  String image;

  NatGeoMovies({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  NatGeoMovies.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<NatGeoMovies> natGeoMovie = [
    NatGeoMovies(
    movieName: "Torn", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftorn.jpg?alt=media&token=ce87d85c-54c8-4f0a-b263-be8f7abae177",
  ),
    NatGeoMovies(
    movieName: "Fauci", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffauci.jpg?alt=media&token=4008d572-d57e-443e-b7de-5c5f3e63a2ea",
  ),
    NatGeoMovies(
    movieName: "Rays of Change", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frays_changes.jpg?alt=media&token=475f6c49-7231-4cf5-a16a-719f91240039" ,
  ),
    NatGeoMovies(
    movieName: "Buried Seeds", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fburied%20seeds.jpg?alt=media&token=0a85c926-bb28-4caa-9c7a-8bfd64a1d7f3" ,
  ),
    NatGeoMovies(
    movieName: "Ultimate Viper", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fultimate%20viper.jpg?alt=media&token=b8ca8719-6792-43da-b8ff-80498197feba",
  ),
    NatGeoMovies(
    movieName: "Legacy of a King", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Flegacy_king.jpg?alt=media&token=f2cdc691-2868-4a61-8a27-8ba96a76c966",
  ),
    NatGeoMovies(
    movieName:"The Rescue" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frescue.jpeg?alt=media&token=b0d51ac8-30ec-4103-b2f8-4fd38e0361b7",
  ),
    NatGeoMovies(
    movieName: "Lion Brothers", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Flion_brother.jpg?alt=media&token=a0095157-ead1-4155-87ca-0c45789f173b",
  ),
    NatGeoMovies(
    movieName:"Real Right Stuff" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Freal_right_stuff.jpg?alt=media&token=b1f42b6d-0f3c-4532-b448-b137a254905f" ,
  ),
    NatGeoMovies(
    movieName:"Own the Rooms" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fown_room.jpg?alt=media&token=07d1d128-9cf8-44ee-b268-53cd9ff23f83",
  ),
    NatGeoMovies(
    movieName: "Wild Alaska", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwild_alaska.webp?alt=media&token=2dc88c19-79b4-49ba-84fe-de3e462ad8b9" ,
  ),
];

class NatGeoMoviesBar extends StatelessWidget {
  const NatGeoMoviesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: natGeoMovie.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final natGeoMovies = natGeoMovie[index];
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
                      tag: natGeoMovies.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          natGeoMovies.image,
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
