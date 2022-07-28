import 'package:flutter/material.dart';

class AnimatedMovies {
  String movieName;
  String image;

  AnimatedMovies({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  AnimatedMovies.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<AnimatedMovies> animatedMovies = [
  AnimatedMovies(
    movieName: "Spooky Buddies", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FSpookyBuddies.jpg?alt=media&token=b3058371-ca3a-4b13-947f-329a8cdb3d50",
  ),
  AnimatedMovies(
    movieName: "Mickey's Twice upon a Christmas", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmickey_twice_upon.jpg?alt=media&token=3e3c1806-e6ba-4298-8757-5ab8d71f1b5b",
  ),
  AnimatedMovies(
    movieName: "Poohs Grand Adventure", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpooh_grand.jpg?alt=media&token=54df1a05-531d-4d74-8127-ce33b5c936c7",
  ),
  AnimatedMovies(
    movieName: "Cinderella 1", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcinderella_1.jpg?alt=media&token=c18b508b-15ce-48a9-a259-9385b3000a3d",
  ),
  AnimatedMovies(
    movieName:"Tarzen" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftarzen.jpg?alt=media&token=68089ab5-a2e0-44ae-846d-aa726e3c5bdc",
  ),
  AnimatedMovies(
    movieName: "Tinkerbell", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftinkerbell.jpg?alt=media&token=9e53b37d-b4f6-4e3b-b800-8044b212cded" ,
  ),
  AnimatedMovies(
    movieName: "Tarzen and jane", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftarzen_jane.jpg?alt=media&token=5cfeea4a-f2f6-4f66-b709-40114ad9c7d8" ,
  ),
  AnimatedMovies(
    movieName:"Mulan : Animated" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmulan_1.jpg?alt=media&token=c3631c16-2c5b-4509-a8ce-ca011990b0d8" ,
  ),
  AnimatedMovies(
    movieName: "Mulan 2 ", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FMulan%202.jpg?alt=media&token=ef5fe6e8-e9d5-4875-b967-69f018639ed8" ,
  ),
  AnimatedMovies(
    movieName:"Cinderlla 2" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FCinderella2.jpg?alt=media&token=3d1db746-c37a-42db-b1a1-4c519454d026" ,
  ),
  AnimatedMovies(
    movieName:"Cinderlla 3" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcindrella3.jpg?alt=media&token=3aa9ccbc-28ff-4963-8fc7-285f08374b64",
  ),
];

class DisneyAnimatedMovies extends StatelessWidget {
  const DisneyAnimatedMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: recommedList());
  }

  Widget recommedList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animatedMovies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final animatedMoviesDisney = animatedMovies[index];
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
                      tag: animatedMoviesDisney.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          animatedMoviesDisney.image,
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
