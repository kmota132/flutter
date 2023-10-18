import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class AppWidget extends StatelessWidget {
  // final String title; // Construtor
  // const AppWidget({super.key, required this.title}); // automaticamente e criado

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //wigjet mais importante MATERIALAPP
        theme: ThemeData(primaryColor: Colors.red),
        home: const HomePage());
  }

  //   return Center(
  //     child: Text(
  //       title,
  //       textDirection: TextDirection.ltr,
  //       style: const TextStyle(color: Colors.white, fontSize: 50.0),
  //     ),
  //   );
  // }
}
