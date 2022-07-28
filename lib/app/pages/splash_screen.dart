import 'dart:async';
import 'package:disney_plus_clone_clone/app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/disney_castle.jpg"),
          alignment: Alignment.topCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 250),
            Image.asset(
              "assets/img/disney_logo.png",
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height / 6.5,
              // width: MediaQuery.of(context).size.width * 6.5,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8, left: 8),
              child: Text(
                "The best stories in the world , all in one place.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    decoration: TextDecoration.none,
                    fontFamily: "Poppins",
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(
              "assets/img/brands.jpeg",
              height: MediaQuery.of(context).size.height / 13,
            ),
            const SizedBox(height: 50),
            const CircularProgressIndicator(
              color: Colors.blue,
            ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SignInPage(),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     width: MediaQuery.of(context).size.width / 1.2,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       color: Colors.blue,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: const Center(
            //       child: Text(
            //         "Sign In or Register",
            //         style: TextStyle(
            //             decoration: TextDecoration.none,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 18,
            //             fontFamily: "Poppins"),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
