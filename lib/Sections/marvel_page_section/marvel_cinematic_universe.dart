import 'package:flutter/material.dart';

class MarvelCinematicUni {
  String movieName;
  String image;

  MarvelCinematicUni({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  MarvelCinematicUni.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<MarvelCinematicUni> marvelCinematicUni = [
    MarvelCinematicUni(
    movieName:"Doctor Strange Madness" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdoctor_strange.jpeg?alt=media&token=1bc4086b-6c0c-4e76-8d8e-3284cfc67b66",
  ),
    MarvelCinematicUni(
    movieName: "MS Marvel", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fms_marvel.jpg?alt=media&token=f0a69d15-caa1-4399-9827-3bf2a181a0a1" ,
  ),
    MarvelCinematicUni(
    movieName: "Moon Kinght", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmoon_knight.jpg?alt=media&token=bad49424-9542-43f8-a39e-e0020ec38fd9",
  ),
    MarvelCinematicUni(
    movieName: "Hawkeye", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhawkeye.jpg?alt=media&token=505bbbbd-4bdb-437a-8576-4fd22e81b538" ,
  ),
    MarvelCinematicUni(
    movieName: "Eternals", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Feternals.jpeg?alt=media&token=6ccb641c-e495-4352-819c-78ce3880d826",
  ),
    MarvelCinematicUni(
    movieName: "Shang chi", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fshang_chi.jpg?alt=media&token=ff6df66e-f496-406a-9038-44bbbae96082",
  ),
    MarvelCinematicUni(
    movieName:"Falcon and Winter Soldier" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffalcon_winter_soldier.png?alt=media&token=8347d800-28b1-4876-ba57-f07bc1080779" ,
  ),
    MarvelCinematicUni(
    movieName: "Loki" , 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Floki.jpg?alt=media&token=40633548-bb57-4272-a23e-591994896496" ,
  ),
    MarvelCinematicUni(
    movieName: "Black Widow", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fblack_widow.jpeg?alt=media&token=a14db5de-1892-4a57-a351-ea54d620fcfb",
  ),
    MarvelCinematicUni(
    movieName: "What If", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwhat_if.jpg?alt=media&token=182950e8-3e96-4e62-968c-4681f5222e74",
  ),
    MarvelCinematicUni(
    movieName: "Avengers Endgame", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Favengers_endgame.jpg?alt=media&token=55a39220-4363-4a40-bed4-b7d276d837bc",
  ),
];

class MarvelCinematicUniBar extends StatelessWidget {
  const MarvelCinematicUniBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: marvelCinematicUni.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final marvelCinematicUnis = marvelCinematicUni[index];
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
                      tag: marvelCinematicUnis.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          marvelCinematicUnis.image,
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
