import 'package:disney_plus_clone_clone/Sections/pixar_page_section/pixar_movies.dart';
import 'package:disney_plus_clone_clone/Sections/pixar_page_section/pixar_originals.dart';
import 'package:disney_plus_clone_clone/Sections/pixar_page_section/pixar_shorts.dart';
import 'package:disney_plus_clone_clone/Sections/pixar_page_section/pixar_through_years.dart';
import 'package:disney_plus_clone_clone/Sections/pixar_page_section/toy_story_cars.dart';
import 'package:disney_plus_clone_clone/utils/title_bar.dart';
import 'package:flutter/material.dart';

class PixarPage extends StatefulWidget {
  const PixarPage({Key? key}) : super(key: key);

  @override
  State<PixarPage> createState() => _PixarPageState();
}

class _PixarPageState extends State<PixarPage> {
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
                "assets/img/pixar_app_page.jpg",
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
                    titles_bar(title: "Originals"),
                    PixarOriginalsBar(),
                    titles_bar(title: "Pixar Movies"),
                    PixarMoviesBar(),
                    titles_bar(title: "Shorts"),
                    PixarShortsBar(),
                    titles_bar(title: "Toy Story & Cars"),
                    ToyStoryCarsBar(),
                    titles_bar(title: "Pixar Through The Years"),
                    PixarThroughYearsBar(),
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
