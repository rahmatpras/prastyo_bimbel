import 'package:flutter/material.dart';
import 'package:prastyo_bimbel/landingpage/landing_page.dart';
import 'package:prastyo_bimbel/navbar/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prastyo Bimbel',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(155, 227, 215, 1),
            Color.fromRGBO(255, 252, 215, 1),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
