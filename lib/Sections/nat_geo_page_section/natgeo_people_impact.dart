import 'package:flutter/material.dart';

class NatGeoPeople {
  String movieName;
  String image;

  NatGeoPeople({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  NatGeoPeople.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<NatGeoPeople> natGeoPeople = [
    NatGeoPeople(
    movieName: "One for Change", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fone_for_change.jpg?alt=media&token=c96ca568-cc21-441a-8857-94bb56deb864" ,
  ),
    NatGeoPeople(
    movieName: "She Builds", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fshe_builds.jpg?alt=media&token=6d75a816-850d-4cb9-837c-5416b1cbe6bf",
  ),
    NatGeoPeople(
    movieName: "It happens only in India", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fit%20happends%20india.jpg?alt=media&token=6b091417-f9d0-42c2-bd52-470199f0cd75",
  ),
    NatGeoPeople(
    movieName: "Fauci", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffauci.jpg?alt=media&token=4008d572-d57e-443e-b7de-5c5f3e63a2ea",
  ),
    NatGeoPeople(
    movieName: "Buried Seeds", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fburied%20seeds.jpg?alt=media&token=0a85c926-bb28-4caa-9c7a-8bfd64a1d7f3",
  ),
    NatGeoPeople(
    movieName: "Buried Seeds", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fburied%20seeds.jpg?alt=media&token=0a85c926-bb28-4caa-9c7a-8bfd64a1d7f3",
  ),
    NatGeoPeople(
    movieName: "He named me Malala", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhe_named.jpg?alt=media&token=f674ad85-4a73-4edc-b8cf-3303f82388e7",
  ),
    NatGeoPeople(
    movieName: "Welcome earth", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwelcome_earth.jpg?alt=media&token=8b18957c-1fd1-4ba0-b524-81c85b1421ad" ,
  ),
    NatGeoPeople(
    movieName:"Viking Warrior Women" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwiking%20warrior.jpg?alt=media&token=1afb9ea3-87ec-4a38-a9b5-6265f0bbf146",
  ),
    NatGeoPeople(
    movieName: "Torn", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftorn.jpg?alt=media&token=ce87d85c-54c8-4f0a-b263-be8f7abae177",
  ),
    NatGeoPeople(
    movieName: "Free Solo", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffree%20solo.jpg?alt=media&token=9e5bd46c-5e76-4633-aac6-402e9293ef45",
  ),
];

class NatGeoPeopleBar extends StatelessWidget {
  const NatGeoPeopleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: natGeoPeople.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final natGeopeoples = natGeoPeople[index];
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
                      tag: natGeopeoples.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          natGeopeoples.image,
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
