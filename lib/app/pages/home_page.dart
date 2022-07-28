import 'package:disney_plus_clone_clone/Sections/disney_page_section/disney_page.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/action_adventure.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/disney_plus_originals.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/hit_movies.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/new_to_disney_plus.dart';
import 'package:disney_plus_clone_clone/Sections/home_page_sections/recommended_for_you.dart';
import 'package:disney_plus_clone_clone/Sections/marvel_page_section/marvel_page.dart';
import 'package:disney_plus_clone_clone/utils/title_bar.dart';
import 'package:disney_plus_clone_clone/widgets/brand_bar.dart';
import 'package:disney_plus_clone_clone/widgets/home_banner_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/disney_logo.png",
              fit: BoxFit.cover,
              height: 60,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            HomeBannerWidget(),
            BrandBar(),
            titles_bar(title: "Recommended For You"),
            RecommendationBar(),
            titles_bar(title: "New To Disney+"),
            NewToDisneyPlusBar(),
            titles_bar(title: "Hit Movies"),
            HitMoviesDisney(),
            titles_bar(title: "Disney+ Originals"),
            DisneyPlusOriginals(),
            titles_bar(title: "Action and Adventure"),
            ActionAndAdventure(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
