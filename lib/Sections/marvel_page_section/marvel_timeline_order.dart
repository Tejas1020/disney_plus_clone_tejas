import 'package:flutter/material.dart';

class MarvelTimelineOrder {
  String movieName;
  String image;

  MarvelTimelineOrder({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  MarvelTimelineOrder.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<MarvelTimelineOrder> marvelTimelineOrder = [
    MarvelTimelineOrder(
    movieName: "Captain America First Avenger", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcaptain_america.jpg?alt=media&token=ab5a69b3-a569-428c-9e2f-793a694c7d6a",
  ),
    MarvelTimelineOrder(
    movieName: "Captain Marvel", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcaptain_marvel.jpg?alt=media&token=beb12d1c-a269-42e6-abee-18a60fc6a8de",
  ),
    MarvelTimelineOrder(
    movieName: "Iron Man 1", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_man%201.jpg?alt=media&token=6d164c19-7a51-4bf7-806c-f2061a5d090b" ,
  ),
    MarvelTimelineOrder(
    movieName: "Iron Man 2", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_man%202.jpg?alt=media&token=943015d3-f78a-42f6-8004-96ed7324d1cf",
  ),
    MarvelTimelineOrder(
    movieName: "Thor", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fthor.jpg?alt=media&token=3c4355ea-192c-4ec1-ae87-6a4e15e82b41",
  ),
    MarvelTimelineOrder(
    movieName: "Iron Man 3", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_man%203.jpg?alt=media&token=7a143285-e921-429f-83a7-f87131b3ba0f" ,
  ),
    MarvelTimelineOrder(
    movieName: "Guardians of Galaxy", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fguardians_galaxy.jpg?alt=media&token=4f2c6d06-5ac3-400a-9bc2-855542683dda" ,
  ),
    MarvelTimelineOrder(
    movieName: "Guardians of Galaxy 2", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fguardians_galaxy%202.jpg?alt=media&token=645a09f8-1d5b-485c-9108-f3fade8de599",
  ),
    MarvelTimelineOrder(
    movieName: "Avengers Age of Ultron" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Favengers_age_of_ultron.jpg?alt=media&token=355ddc41-7a2d-4a09-a838-2c334c97f2b1" ,
  ),
    MarvelTimelineOrder(
    movieName: "SpiderMan HomeComing" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fspiderman_homecoing.jpg?alt=media&token=f9a9b271-acab-4d48-a73e-b5753f8b3131",
  ),
    MarvelTimelineOrder(
    movieName: "Black Widow", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fblack_widow.jpeg?alt=media&token=a14db5de-1892-4a57-a351-ea54d620fcfb" ,
  ),
];

class MarvelTimelineOrderBar extends StatelessWidget {
  const MarvelTimelineOrderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: marvelTimelineOrder.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final marvelTimelineOrders = marvelTimelineOrder[index];
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
                      tag: marvelTimelineOrders.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          marvelTimelineOrders.image,
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
