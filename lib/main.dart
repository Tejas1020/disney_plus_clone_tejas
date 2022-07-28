import 'package:disney_plus_clone_clone/app/pages/splash_screen.dart';
import 'package:disney_plus_clone_clone/app/pages/home_page.dart';
import 'package:disney_plus_clone_clone/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterfire_ui/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Disney Plus App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen()
        // AuthWidget(
        //   signedInBuilder: (context) => const HomePage(),
        //   nonSignedInBuilder: (context) => const WelcomeSignInPage(),
        // ),
        );
  }
}


