import 'package:flutter/material.dart';

class NatGeoScience {
  String movieName;
  String image;

  NatGeoScience({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  NatGeoScience.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<NatGeoScience> natGeoScience = [
    NatGeoScience(
    movieName: "Rays of Change", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frays_changes.jpg?alt=media&token=475f6c49-7231-4cf5-a16a-719f91240039",
  ),
    NatGeoScience(
    movieName: "Ultimate Supercar", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fultimate_supercar.jpg?alt=media&token=1b6c0f18-33fa-4cd5-a7a4-a2552b7128f1",
  ),
    NatGeoScience(
    movieName: "Brain Games", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbraingames.jpg?alt=media&token=fa177cc4-b344-4ed7-bc3f-dab2226a403b" ,
  ),
    NatGeoScience(
    movieName:"Cosmos Possible World" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcosmos.jpg?alt=media&token=207393b5-94be-463d-a604-0beb87f5f0e8",
  ),
    NatGeoScience(
    movieName: "Real Right Stuff", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Freal_right_stuff.jpg?alt=media&token=b1f42b6d-0f3c-4532-b448-b137a254905f",
  ),
    NatGeoScience(
    movieName: "Made in a Day", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmade_in_day.jpg?alt=media&token=8981c58c-3126-4fde-b376-a13854a72df9",
  ),
    NatGeoScience(
    movieName: "Science of Stupid", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fscience_stupid.jpg?alt=media&token=4bfa417f-28c2-47d7-bc4d-d206ce9c0298",
  ),
    NatGeoScience(
    movieName: "Drain the Ocean", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdrain-the-ocean.jpg?alt=media&token=633dbd2b-8a30-47d9-ba90-f90bdfc94ec1" ,
  ),
    NatGeoScience(
    movieName: "From the Ashes", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffrom_ashes.jpg?alt=media&token=93ee01a4-7bba-4817-8082-4a2c7864880a",
  ),
    NatGeoScience(
    movieName: "Mega Structure", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmega_structure.jpg?alt=media&token=5068c66f-c8e2-4e1d-b0ae-464dc77c9f31",
  ),
    NatGeoScience(
    movieName: "Space shuttle", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspace_shuttle.jpg?alt=media&token=9a2d81ad-a4a8-4fee-baac-5748cfe2a029",
  ),
];

class NatGeoScienceBar extends StatelessWidget {
  const NatGeoScienceBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: natGeoScience.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final natGeoSciences = natGeoScience[index];
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
                      tag: natGeoSciences.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          natGeoSciences.image,
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
