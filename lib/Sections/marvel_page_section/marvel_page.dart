import 'package:disney_plus_clone_clone/Sections/marvel_page_section/marvel_action_series.dart';
import 'package:disney_plus_clone_clone/Sections/marvel_page_section/marvel_cinematic_universe.dart';
import 'package:disney_plus_clone_clone/Sections/marvel_page_section/marvel_phase.dart';
import 'package:disney_plus_clone_clone/Sections/marvel_page_section/marvel_spiderverse.dart';
import 'package:disney_plus_clone_clone/Sections/marvel_page_section/marvel_timeline_order.dart';
import 'package:disney_plus_clone_clone/utils/title_bar.dart';
import 'package:flutter/material.dart';

class MarvelPage extends StatefulWidget {
  const MarvelPage({Key? key}) : super(key: key);

  @override
  State<MarvelPage> createState() => _MarvelPageState();
}

class _MarvelPageState extends State<MarvelPage> {
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
                "assets/img/marvel_page.jpg",
                fit: BoxFit.cover,
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
                    titles_bar(title: "Marvel Cinematic Universe"),
                    MarvelCinematicUniBar(),
                    titles_bar(title: "Welcome to the Spider-verse"),
                    MarvelSpiderverseBar(),
                    titles_bar(title: "Marvel Cinematic Universe Phase \nOne, Two, Three & Four"),
                    MarvelPhasesBar(),
                    titles_bar(title: "Marvel Cinematic Universe in \nTimeline Order"),
                    MarvelTimelineOrderBar(),
                    titles_bar(title: "Marvel Live Action Series and Specials"),
                    MarvelActionSeriesBar(),
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