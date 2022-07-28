import 'package:flutter/material.dart';

class PixarShorts {
  String movieName;
  String image;

  PixarShorts({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  PixarShorts.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<PixarShorts> pixarShorts = [
    PixarShorts(
    movieName:"Luxo Jr" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fluxo_jr.jpg?alt=media&token=580b77e4-12e0-4e53-8973-1b0523a55bb2",
  ),
    PixarShorts(
    movieName:"Super team" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsuper_team.jpg?alt=media&token=b8768f06-af98-4204-b3fb-3a7d6ac05f6c" ,
  ),
    PixarShorts(
    movieName: "Mike new car", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmike_new_car.jpg?alt=media&token=4f718081-6479-45ed-a5c4-4562ebdaf872",
  ),
    PixarShorts(
    movieName: "Piper", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpiper.jpg?alt=media&token=aacc8997-0ffc-4c4d-b5e8-f91254c6099b",
  ),
    PixarShorts(
    movieName:"Dug Days" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdug%20days.jpg?alt=media&token=6916dc00-c8d9-4fd0-9563-4376e4ce8fa2" ,
  ),
    PixarShorts(
    movieName:"Caio Alberto" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fciao%20alberto.jpg?alt=media&token=8f0dc37e-6125-4966-ba3f-40df0b596160",
  ),
    PixarShorts(
    movieName: "Toy Story", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_1.jpg?alt=media&token=f7299c55-4d75-4ba5-b402-9ad0c47ebe89",
  ),
    PixarShorts(
    movieName:"Boundin" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fboudin.jpg?alt=media&token=cfbcbed1-5790-41cb-ab87-972a65a1743f",
  ),
    PixarShorts(
    movieName: "For the Birds", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffor%20the%20birds.jpg?alt=media&token=20dcca6a-3791-44ad-80b9-4c2558a03ac9",
  ),
    PixarShorts(
    movieName: "Kinck Knack", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fknick%20knack.jpg?alt=media&token=589ccd0c-8f21-4a2a-bf2a-dcc62430165a" ,
  ),
    PixarShorts(
    movieName:"Bao" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbao.jpg?alt=media&token=4ba62626-f772-48f3-8264-b1eae3a4fa6c",
  ),
];

class PixarShortsBar extends StatelessWidget {
  const PixarShortsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pixarShorts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final pixarShort = pixarShorts[index];
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
                      tag: pixarShort.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          pixarShort.image,
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
