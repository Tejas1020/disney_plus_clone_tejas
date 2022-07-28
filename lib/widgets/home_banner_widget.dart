import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  "assets/top_banner/doctor_strange_multiverse.jpg",
  "assets/top_banner/ms_marvel.jpg",
  "assets/top_banner/Santa-Evita.jpg",
  "assets/top_banner/kenobi.jpg",
  "assets/top_banner/jungle_cruise.jpg",
  "assets/top_banner/turning_red.jpg",
  "assets/top_banner/america_beautiful.jpg",
];

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imgList
          .map(
            (item) => Container(       
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(150),
              ),
              child: Center(
                child: Image.asset(
                  item,
                  fit: BoxFit.contain,
                  width: 1000,
                  height: 1000,
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(      
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
    );
  }
}
