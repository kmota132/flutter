import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // final String title; // Construtor
  // const AppWidget({super.key, required this.title}); // automaticamente e criado

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            //wigjet mais importante MATERIALAPP
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            home: const HomePage(),
          );
        });
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
