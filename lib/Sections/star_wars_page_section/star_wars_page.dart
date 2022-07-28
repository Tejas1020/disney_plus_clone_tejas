import 'package:disney_plus_clone_clone/Sections/star_wars_page_section/starwars_documentaries.dart';
import 'package:disney_plus_clone_clone/Sections/star_wars_page_section/starwars_series.dart';
import 'package:disney_plus_clone_clone/Sections/star_wars_page_section/starwars_timeline.dart';
import 'package:disney_plus_clone_clone/utils/title_bar.dart';
import 'package:flutter/material.dart';

class StarWarsPage extends StatefulWidget {
  const StarWarsPage({Key? key}) : super(key: key);

  @override
  State<StarWarsPage> createState() => _StarWarsPageState();
}

class _StarWarsPageState extends State<StarWarsPage> {
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
                "assets/img/start_wars_page.jpg",
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
                    titles_bar(title: "Star Wars in Timeline Order"),
                    StarWarsTimelineBar(),
                    titles_bar(title: "Star Wars Documentaries"),
                    StarWarsDocumentryBar(),
                    titles_bar(title: "Series and Movies"),
                    StarWarsSeriesBar(),
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
