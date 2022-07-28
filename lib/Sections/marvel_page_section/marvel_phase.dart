import 'package:flutter/material.dart';

class MarvelPhase {
  String movieName;
  String image;

  MarvelPhase({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  MarvelPhase.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<MarvelPhase> marvelPhase = [
    MarvelPhase(
    movieName:"Iron Man 1" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_man%201.jpg?alt=media&token=6d164c19-7a51-4bf7-806c-f2061a5d090b" ,
  ),
    MarvelPhase(
    movieName: "Iron Man 2", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_man%202.jpg?alt=media&token=943015d3-f78a-42f6-8004-96ed7324d1cf" ,
  ),
    MarvelPhase(
    movieName:"Thor" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fthor.jpg?alt=media&token=3c4355ea-192c-4ec1-ae87-6a4e15e82b41" ,
  ),
    MarvelPhase(
    movieName: "Captain America : First Avenger", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcaptain_america.jpg?alt=media&token=ab5a69b3-a569-428c-9e2f-793a694c7d6a",
  ),
    MarvelPhase(
    movieName:"Iron Man 3" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_man%203.jpg?alt=media&token=7a143285-e921-429f-83a7-f87131b3ba0f" ,
  ),
    MarvelPhase(
    movieName: "Guardians of Galaxy", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fguardians_galaxy.jpg?alt=media&token=4f2c6d06-5ac3-400a-9bc2-855542683dda" ,
  ),
    MarvelPhase(
    movieName: "Avengers Age of Ultron", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Favengers_age_of_ultron.jpg?alt=media&token=355ddc41-7a2d-4a09-a838-2c334c97f2b1" ,
  ),
    MarvelPhase(
    movieName: "Ant Man", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fant_man.jpg?alt=media&token=480969f3-f954-49c5-a7ba-6291aefe3a48",
  ),
    MarvelPhase(
    movieName: "Black Panther", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fblack_panther.jpg?alt=media&token=6ac69a20-a196-4277-a95a-ff91b6c7e6db" ,
  ),
    MarvelPhase(
    movieName: "Thor Ragnarok", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fthor_ragnork.jpg?alt=media&token=4d598bbe-27e6-4032-9004-e00f0691f017",
  ),
    MarvelPhase(
    movieName: "Avengers Civil War" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FCivil_War.jpg?alt=media&token=8e1070a4-d729-4176-bbc4-e9f636ab7862" ,
  ),
];

class MarvelPhasesBar extends StatelessWidget {
  const MarvelPhasesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: marvelPhase.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final marvelPhases = marvelPhase[index];
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
                      tag: marvelPhases.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          marvelPhases.image,
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
