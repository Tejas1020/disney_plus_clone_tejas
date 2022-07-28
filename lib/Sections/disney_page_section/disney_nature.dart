import 'package:flutter/material.dart';

class DisneyNature {
  String movieName;
  String image;

  DisneyNature({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  DisneyNature.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<DisneyNature> disneyNature = [
  DisneyNature(
    movieName: "Elephant", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Felephant.jpg?alt=media&token=fe088d23-16eb-4a0f-acc8-7511a1e77cf6",
  ),
  DisneyNature(
    movieName:"Diving with Dolphins" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdiving_dolphins.jpg?alt=media&token=d6724d74-0c21-455c-a1b2-660f4dd2aa3a" ,
  ),
  DisneyNature(
    movieName: "Polar Bear", 
    image:        "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FPolar-Bear.jpg?alt=media&token=b0aaf75b-a8f2-4d6d-8254-ba06b0f9c096",
  ),
  DisneyNature(
    movieName: "Penguins", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpenguin.jpg?alt=media&token=3b5a9eb1-cb70-4060-9ae6-1e41aa164b51",
  ),
  DisneyNature(
    movieName: "Born in china", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fborn_in_china.jpg?alt=media&token=414138c1-4ae4-43f3-8d42-979f09ac0735",
  ),
  DisneyNature(
    movieName: "Monkey Kingdom", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmonkey-kingdom.jpg?alt=media&token=6c8779fa-9fea-4726-a4bc-f61e9d03da1c" ,
  ),
  DisneyNature(
    movieName: "Chimpanzee", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fchimpanzee.jpg?alt=media&token=c3df074e-0eed-47f6-80d2-c2f65c88e984" ,
  ),
  DisneyNature(
    movieName: "Penguin Life on edge", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpenguin_life_on_edge.jpg?alt=media&token=14cbc86a-6197-43a4-81e7-707d66e4fba5" ,
  ),
  DisneyNature(
    movieName: "Bear Witness", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbear_witness.jpg?alt=media&token=afa9db20-6e29-4606-837b-7312b58d065d" ,
  ),
  DisneyNature(
    movieName: "in the footsepts of elephant", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffootsteps_elephant.jpg?alt=media&token=4e84dd88-3ce7-47b7-bf9d-548df0a243e1" ,
  ),
  DisneyNature(
    movieName:"Dolphin Reef" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdolphin_reef.jpg?alt=media&token=9982fac6-1441-4bf9-b8ef-dcbd6af35c3f" ,
  ),
];

class DisneyNatureMovies extends StatelessWidget {
  const DisneyNatureMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: recommedList());
  }

  Widget recommedList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: disneyNature.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final disneyNatureMovies = disneyNature[index];
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
                      tag: disneyNatureMovies.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          disneyNatureMovies.image,
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
