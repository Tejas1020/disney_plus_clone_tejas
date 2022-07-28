import 'package:flutter/material.dart';

class MarvelActionSeries {
  String movieName;
  String image;

  MarvelActionSeries({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  MarvelActionSeries.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<MarvelActionSeries> marvelActionSeries = [
    MarvelActionSeries(
    movieName: "Ms Marvel", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fms_marvel.jpg?alt=media&token=f0a69d15-caa1-4399-9827-3bf2a181a0a1" ,
  ),
    MarvelActionSeries(
    movieName:"DareDevil" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fdaredevil.jpg?alt=media&token=7bfd146a-af38-4676-9549-b72b1826c8ca",
  ),
    MarvelActionSeries(
    movieName: "IronFist", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Firon_fist.jpg?alt=media&token=5f4c237e-9cda-4546-a8a6-3393da2a95e1" ,
  ),
    MarvelActionSeries(
    movieName: "Punisher", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fpunisher.jpg?alt=media&token=8ad984db-43d0-4bb8-9cfb-71283d5c8ad9",
  ),
    MarvelActionSeries(
    movieName: "Jessica Jones", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fjessica_jones.jpg?alt=media&token=67d66f35-1afa-4d38-832b-9e46481a0909",
  ),
    MarvelActionSeries(
    movieName:"Moon Kinght" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmoon_knight.jpg?alt=media&token=bad49424-9542-43f8-a39e-e0020ec38fd9" ,
  ),
    MarvelActionSeries(
    movieName: "Hawkeye", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fhawkeye.jpg?alt=media&token=505bbbbd-4bdb-437a-8576-4fd22e81b538" ,
  ),
    MarvelActionSeries(
    movieName:"Loki" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Floki.jpg?alt=media&token=40633548-bb57-4272-a23e-591994896496" ,
  ),
    MarvelActionSeries(
    movieName:"Falcon Winter Soldier" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Ffalcon_winter_soldier.png?alt=media&token=8347d800-28b1-4876-ba57-f07bc1080779",
  ),
    MarvelActionSeries(
    movieName:"Wanda Vision" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fwanda_vision.jpg?alt=media&token=052069eb-c90e-42da-8c30-932cc95582f2",
  ),
    MarvelActionSeries(
    movieName: "Eternals", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Feternals.jpeg?alt=media&token=6ccb641c-e495-4352-819c-78ce3880d826" ,
  ),
];

class MarvelActionSeriesBar extends StatelessWidget {
  const MarvelActionSeriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: marvelActionSeries.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final marvelActionSerie = marvelActionSeries[index];
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
                      tag: marvelActionSerie.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          marvelActionSerie.image,
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
