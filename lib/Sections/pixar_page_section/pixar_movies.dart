import 'package:flutter/material.dart';

class PixarMovies {
  String movieName;
  String image;

  PixarMovies({
    required this.movieName,
    required this.image,
  });

  Map<String, dynamic> toMap(String movieName) {
    return {
      'movieName': movieName,
      'image': image,
    };
  }

  PixarMovies.fromMap(Map<String, dynamic> map)
      : movieName = map['movieName'] ?? "",
        image = map['image'] ?? "";
}

List<PixarMovies> pixarMovies = [
    PixarMovies(
    movieName:"Toy Story 1" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_1.jpg?alt=media&token=f7299c55-4d75-4ba5-b402-9ad0c47ebe89",
  ),
    PixarMovies(
    movieName: "Toy Story 2" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_2.jpeg?alt=media&token=5009bdfe-ee69-4289-b463-14d38685b7b8" ,
  ),
    PixarMovies(
    movieName: "Monsters", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmonsters.jpg?alt=media&token=04d00bb0-ab5a-40fa-9e00-8be8af929ad3",
  ),
    PixarMovies(
    movieName:"The Incredibles" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fincredibles.jpg?alt=media&token=4ec604d2-cdec-441e-8217-1e509b413871" ,
  ),
    PixarMovies(
    movieName: "Ratatoullie", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fratatoulille.jpg?alt=media&token=d13c083c-d0f2-42cd-bcfe-7e8b713cd442" ,
  ),
    PixarMovies(
    movieName: "Brave", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fbrave.jpg?alt=media&token=769df53a-2ebe-4665-9f46-847789495a9b",
  ),
    PixarMovies(
    movieName: "Toy Story 3", 
    image:"https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2FToy_Story_3.jpg?alt=media&token=04df38bc-7011-421a-a5aa-9aac6e0c77fc" ,
  ),
    PixarMovies(
    movieName: "Inside out", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Finside_out.jpg?alt=media&token=f5c9c99f-e783-462e-b0ec-e5adba6f049f" ,
  ),
    PixarMovies(
    movieName: "Monsters University", 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fmonster_university.jpg?alt=media&token=a11eb122-d22a-4179-af6b-d2574ee6eeca",
  ),
    PixarMovies(
    movieName:"Cars 3" , 
    image: "https://firebasestorage.googleapis.com/v0/b/disney-plus-tejas.appspot.com/o/images%2Fcars3.jpg?alt=media&token=a849df8a-34f9-4c2a-9017-69fbcd2b0ea8",
  ),
];

class PixarMoviesBar extends StatelessWidget {
  const PixarMoviesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width / 2.2, child: buildList());
  }

  Widget buildList() => GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pixarMovies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          // mainAxisSpacing: 0,
          crossAxisCount: 1,
        ),
        itemBuilder: (context, index) {
          final pixarMovie = pixarMovies[index];
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
                      tag: pixarMovie.movieName,
                      child: ClipRRect(
                        child: Image.network(
                          pixarMovie.image,
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
