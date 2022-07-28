import 'package:flutter/material.dart';

class DisneyOriginals {
  String movieName;
  String image;

  DisneyOriginals({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  DisneyOriginals.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<DisneyOriginals> disneyOriginals = [
  DisneyOriginals(
    movieName:"High School Musical" ,
   image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhigh_school.jpg?alt=media&token=d3d3ff0d-a3bd-4e47-8f51-c8a52d38b2ea",
   ),
  DisneyOriginals(
    movieName: "Light and Magic",
   image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Flight-and-magic.jpg?alt=media&token=3f1a42c3-6ce9-4f21-82a4-6dfea9a9e6db" ,
   ),
  DisneyOriginals(
    movieName: "Zombies 3",
   image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fzombies_3.jpeg?alt=media&token=f99be3aa-67d4-4211-811c-2ba583e41412" ,
   ),
  DisneyOriginals(
    movieName:"Baymax" ,
   image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FBaymax.jpg?alt=media&token=eea3acd2-4c25-4dd0-979d-40c48c9164c3",
   ),
  DisneyOriginals(
    movieName: "Rise",
   image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Frise.jpg?alt=media&token=065d5c06-e4af-4463-a5bb-b75e2c0f9868",
   ),
  DisneyOriginals(
    movieName:"Chip and Dale" ,
   image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fchip_dale.jpg?alt=media&token=9321b737-abef-4803-9aab-a9f0b129e344" ,
   ),
  DisneyOriginals(
    movieName:"Sneakerella" ,
   image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FSneakerella.jpg?alt=media&token=fc147fed-8cd6-4abd-87fa-ba964f6fffb8" ,
   ),
  DisneyOriginals(
    movieName:"The quest" ,
   image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FThe-Quest.jpg?alt=media&token=73d168b6-37ad-4c5b-bb21-be449c717a3f",
   ),
  DisneyOriginals(
    movieName:"Sketchbook" ,
   image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsktechbook.jpg?alt=media&token=057b785d-d83b-45c7-ab81-4a0e9553a785" ,
   ),
  DisneyOriginals(
    movieName: "Olivia Rodrigo",
   image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Folivia.jpg?alt=media&token=a9d29817-4ff8-4189-bcfe-1005e9bfcf2c",
   ),
  DisneyOriginals(
    movieName: "Parallels",
   image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fparallels.jpg?alt=media&token=3658a353-ab86-44fe-b473-0987e6e3038d",
   ),
];


class DisneyOriginalBar extends StatelessWidget {
  const DisneyOriginalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: recommedList());
  }

  Widget recommedList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: disneyOriginals.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final disneyOriginalMovies = disneyOriginals[index];
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
                      tag: disneyOriginalMovies.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          disneyOriginalMovies.image,
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
