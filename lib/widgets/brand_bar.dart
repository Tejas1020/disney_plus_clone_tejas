import 'package:disney_plus_clone_clone/Sections/disney_page_section/disney_page.dart';
import 'package:disney_plus_clone_clone/Sections/marvel_page_section/marvel_page.dart';
import 'package:disney_plus_clone_clone/Sections/nat_geo_page_section/nat_geo_page.dart';
import 'package:disney_plus_clone_clone/Sections/pixar_page_section/pixar_page.dart';
import 'package:disney_plus_clone_clone/Sections/star_wars_page_section/star_wars_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brand {
  String brand_name;
  String logo_image;
  String content_image;
  Widget page_route;

  Brand({
    required this.brand_name,
    required this.logo_image,
    required this.content_image,
    required this.page_route,
  });

  Map<String, dynamic> toMap(String brand_name) {
    return {
      'brand_name': brand_name,
      'logo_image': logo_image,
      'content_image': content_image,
      // 'page_route' : page_route,
    };
  }

  Brand.fromMap(Map<String, dynamic> map)
      : brand_name = map['brand_name'] ?? "",
        logo_image = map['logo_image'] ?? "",
        content_image = map["content_image"] ?? "",
        page_route = map["page_route"] ?? "";
}

List<Brand> brands = [
  Brand(
    brand_name: "Disney",
    logo_image: "assets/img/disney.jpeg",
    content_image: "assets/img/disney_castle.jpg",
    page_route: DisneyPage(),
  ),
  Brand(
    brand_name: "Pixar",
    logo_image: "assets/img/pixar.png",
    content_image: "assets/img/disney_castle.jpg",
    page_route: PixarPage(),
  ),
  Brand(
    brand_name: "Marvel",
    logo_image: "assets/img/marvel_logo.png",
    content_image: "assets/img/disney_castle.jpg",
    page_route: MarvelPage(),
  ),
  Brand(
    brand_name: "Star Wars",
    logo_image: "assets/img/star_wars.png",
    content_image: "assets/img/disney_castle.jpg",
    page_route: StarWarsPage(),
  ),
  Brand(
    brand_name: "National Geographic",
    logo_image: "assets/img/nat_geo.png",
    content_image: "assets/img/disney_castle.jpg",
    page_route: NatGeoPage(),
  ),
];

class BrandBar extends StatelessWidget {
  const BrandBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 5,
      child: buildList(),
    );
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final brand = brands[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => brand.page_route,
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  colors: [
                    Color.fromARGB(255, 7, 69, 144),
                    Color.fromARGB(255, 6, 33, 88),
                  ],
                ),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color.fromARGB(255, 28, 66, 133),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Hero(
                      tag: brand.brand_name,
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          brand.logo_image,
                          height: 35,
                          // width: 205,
                        ),
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
