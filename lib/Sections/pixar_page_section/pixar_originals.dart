import 'package:flutter/material.dart';

class PixarOriginal {
  String movieName;
  String image;

  PixarOriginal({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  PixarOriginal.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<PixarOriginal> pixarOriginal = [
    PixarOriginal(
    movieName: "Turning Red", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fturning_red.jpg?alt=media&token=17fbc35d-ba63-4c22-b7c1-2b45807cde17",
  ),
    PixarOriginal(
    movieName:"Soul" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fsoul.jpeg?alt=media&token=6a7e8707-0870-464e-91b6-0db4976e665e",
  ),
    PixarOriginal(
    movieName: "Pop Corn", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpop_corn.jpg?alt=media&token=e0409d54-30f6-413e-9fe1-942cf6cc113d",
  ),
    PixarOriginal(
    movieName: "Pixar in real life", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpixar_reallife.jpg?alt=media&token=117e302d-ee21-4425-a105-03fc7ee15920",
  ),
    PixarOriginal(
    movieName: "Lamp Life", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Flamp_life.jpg?alt=media&token=de1f46da-e90e-4aab-963c-73cce0034388",
  ),
    PixarOriginal(
    movieName:"Purl" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpurl.jpg?alt=media&token=9e399a6c-30ec-4e47-b010-8626c45ac5ac",
  ),
    PixarOriginal(
    movieName:"Float" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffloat.jpeg?alt=media&token=d88ccbe0-d8cb-4fbb-9a21-f0fd767732f6",
  ),
    PixarOriginal(
    movieName:"Loop" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Floop.png?alt=media&token=6b3e9a1f-7a4e-475c-b8a0-d5bd74934cae" ,
  ),
    PixarOriginal(
    movieName:"Wind" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwind.png?alt=media&token=33ad23cf-f0de-40ad-a03a-5150f8e99196" ,
  ),
    PixarOriginal(
    movieName: "Luca", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fluca.jpeg?alt=media&token=4541db4b-472d-4e4b-a997-b05be2645c34" ,
  ),
    PixarOriginal(
    movieName: "Dug Days" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdug%20days.jpg?alt=media&token=6916dc00-c8d9-4fd0-9563-4376e4ce8fa2" ,
  ),
];

class PixarOriginalsBar extends StatelessWidget {
  const PixarOriginalsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pixarOriginal.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final pixarOriginals = pixarOriginal[index];
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
                      tag: pixarOriginals.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          pixarOriginals.image,
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
