import 'package:disney_plus_clone_clone/Sections/nat_geo_page_section/natgeo_movies.dart';
import 'package:disney_plus_clone_clone/Sections/nat_geo_page_section/natgeo_originals.dart';
import 'package:disney_plus_clone_clone/Sections/nat_geo_page_section/natgeo_science.dart';
import 'package:disney_plus_clone_clone/Sections/nat_geo_page_section/natgeo_series.dart';
import 'package:disney_plus_clone_clone/Sections/nat_geo_page_section/natgeo_people_impact.dart';
import 'package:disney_plus_clone_clone/utils/title_bar.dart';
import 'package:flutter/material.dart';

class NatGeoPage extends StatefulWidget {
  const NatGeoPage({Key? key}) : super(key: key);

  @override
  State<NatGeoPage> createState() => _NatGeoPageState();
}

class _NatGeoPageState extends State<NatGeoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 5, 7, 30),
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            elevation: 0,
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/img/nat_geo_page.jpg",
                fit: BoxFit.contain,
                color: Colors.black.withOpacity(0.7),
                colorBlendMode: BlendMode.dstATop,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Column(
                  children: const [
                    titles_bar(title: "Originals"),
                    NatGeoOriginalsBar(),
                    titles_bar(title: "Movies"),
                    NatGeoMoviesBar(),
                    titles_bar(title: "People of Impact"),
                    NatGeoPeopleBar(),
                    titles_bar(title: "Series"),
                    NatGeoSeriesBar(),
                    titles_bar(title: "Science and Innovation"),
                    NatGeoScienceBar(),
                    SizedBox(height: 25),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}