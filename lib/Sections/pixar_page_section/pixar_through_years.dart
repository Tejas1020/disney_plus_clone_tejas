import 'package:flutter/material.dart';

class PixarThroughYears {
  String movieName;
  String image;

  PixarThroughYears({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  PixarThroughYears.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<PixarThroughYears> pixarThroughYears = [
  PixarThroughYears(
    movieName:"Luca" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fluca.jpeg?alt=media&token=4541db4b-472d-4e4b-a997-b05be2645c34",
  ),
  PixarThroughYears(
    movieName: "Pop Corn", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpop_corn.jpg?alt=media&token=e0409d54-30f6-413e-9fe1-942cf6cc113d",
  ),
  PixarThroughYears(
    movieName: "Turning Red", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fturning_red.jpg?alt=media&token=17fbc35d-ba63-4c22-b7c1-2b45807cde17",
  ),
  PixarThroughYears(
    movieName:"Soul" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsoul.jpeg?alt=media&token=6a7e8707-0870-464e-91b6-0db4976e665e" ,
  ),
  PixarThroughYears(
    movieName: "Caio Alberto", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fciao%20alberto.jpg?alt=media&token=8f0dc37e-6125-4966-ba3f-40df0b596160" ,
  ),
  PixarThroughYears(
    movieName: "Toy Story", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_1.jpg?alt=media&token=f7299c55-4d75-4ba5-b402-9ad0c47ebe89" ,
  ),
  PixarThroughYears(
    movieName: "Toy Story 2", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_2.jpeg?alt=media&token=5009bdfe-ee69-4289-b463-14d38685b7b8",
  ),
  PixarThroughYears(
    movieName:"Piper" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpiper.jpg?alt=media&token=aacc8997-0ffc-4c4d-b5e8-f91254c6099b",
  ),
  PixarThroughYears(
    movieName: "Bao", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbao.jpg?alt=media&token=4ba62626-f772-48f3-8264-b1eae3a4fa6c",
  ),
  PixarThroughYears(
    movieName: "Super Team", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsuper_team.jpg?alt=media&token=b8768f06-af98-4204-b3fb-3a7d6ac05f6c",
  ),
  PixarThroughYears(
    movieName:"Boundin" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fboudin.jpg?alt=media&token=cfbcbed1-5790-41cb-ab87-972a65a1743f",
  ),
];

class PixarThroughYearsBar extends StatelessWidget {
  const PixarThroughYearsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pixarThroughYears.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final pixarThroughYear = pixarThroughYears[index];
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
                      tag: pixarThroughYear.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          pixarThroughYear.image,
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
