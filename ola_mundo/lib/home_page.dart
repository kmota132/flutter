import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // pode alterar algo quando o aplicativo esteja rodando
  const HomePage({super.key});

  // o statefuwidget precisa de um estado
  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // importante :serve apra dar mais uma cara de app
      appBar: AppBar(
        title: Text('Home Page (by keven )'),
      ),

      body: Center(
          child: GestureDetector(
        child: Text(
          'Contador: $counter',
          style: TextStyle(fontSize: 50.0),
        ),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      )),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
