import 'package:disney_plus_clone_clone/Sections/disney_page_section/animated_movies.dart';
import 'package:disney_plus_clone_clone/Sections/disney_page_section/disney_live_action_movies.dart';
import 'package:disney_plus_clone_clone/Sections/disney_page_section/disney_nature.dart';
import 'package:disney_plus_clone_clone/Sections/disney_page_section/disney_originals.dart';
import 'package:disney_plus_clone_clone/Sections/disney_page_section/walt_disney.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/action_adventure.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/disney_plus_originals.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/hit_movies.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/new_to_disney_plus.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/recommended_for_you.dart';
import 'package:disney_plus_clone_clone/utils/title_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DisneyPage extends StatefulWidget {
  const DisneyPage({Key? key}) : super(key: key);

  @override
  State<DisneyPage> createState() => _DisneyPageState();
}

class _DisneyPageState extends State<DisneyPage> {
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
                "assets/img/disney_page_castle.jpg",
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
                  children: const[
                    titles_bar(title: "Originals"),
                    DisneyOriginalBar(),
                    titles_bar(title: "Live Action Movies"),
                    DisneyLiveActionMovies(),
                    titles_bar(title: "Walt Disney Animation Studios"),
                    WaltDisneyMovies(),
                    titles_bar(title: "Additional Animated Movies"),
                    DisneyAnimatedMovies(),
                    titles_bar(title: "Disneynature"),
                    DisneyNatureMovies(),
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

