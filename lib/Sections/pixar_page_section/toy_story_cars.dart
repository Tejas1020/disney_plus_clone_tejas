import 'package:flutter/material.dart';

class ToyStoryCars {
  String movieName;
  String image;

  ToyStoryCars({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  ToyStoryCars.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<ToyStoryCars> toyStoryCars = [
    ToyStoryCars(
    movieName:"Toy Story 1" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_1.jpg?alt=media&token=f7299c55-4d75-4ba5-b402-9ad0c47ebe89" ,
  ),
    ToyStoryCars(
    movieName:"Cars 1" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcars1.jpg?alt=media&token=c0bb0802-7403-472d-a319-09ac4ab1deb2",
  ),
    ToyStoryCars(
    movieName:"Toy Story 2" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_2.jpeg?alt=media&token=5009bdfe-ee69-4289-b463-14d38685b7b8" ,
  ),
    ToyStoryCars(
    movieName: "Cars 2", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcars2.jpg?alt=media&token=5836efd3-d0bf-4523-b972-ffe637581f79" ,
  ),
    ToyStoryCars(
    movieName: "Toy Story 3", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_3.jpg?alt=media&token=04df38bc-7011-421a-a5aa-9aac6e0c77fc",
  ),
    ToyStoryCars(
    movieName: "Cars 3", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcars3.jpg?alt=media&token=a849df8a-34f9-4c2a-9017-69fbcd2b0ea8",
  ),
    ToyStoryCars(
    movieName: "Hiccups", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FHiccups.jpg?alt=media&token=143010c7-3111-4e57-babc-6520ca2a2c1b" ,
  ),
    ToyStoryCars(
    movieName: "Lamp Life", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Flamp_life.jpg?alt=media&token=de1f46da-e90e-4aab-963c-73cce0034388",
  ),
    ToyStoryCars(
    movieName: "Toy Story 4", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftoy_story4.jpeg?alt=media&token=45af5709-e37c-4d4e-b023-401ed4f58bc2",
  ),
    ToyStoryCars(
    movieName:"Monster Truck Matter" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmonster_truck.jpg?alt=media&token=dc0ceb5b-bd6e-488f-978a-572b4b472214",
  ),
    ToyStoryCars(
    movieName: "Toy Story Rex", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ftoy_story_rex.jpg?alt=media&token=308b66bd-b68e-4511-b1c8-81efd4088249",
  ),
];

class ToyStoryCarsBar extends StatelessWidget {
  const ToyStoryCarsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: toyStoryCars.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final toyStoryCar = toyStoryCars[index];
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
                      tag: toyStoryCar.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          toyStoryCar.image,
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
