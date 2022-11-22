import 'package:flutter/material.dart';
import 'background_widget.dart';

class BuyPage extends StatelessWidget {
  BuyPage({super.key});
  final TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agro S.O.S", style: TextStyle(color: Colors.white, fontSize: 20)),
        backgroundColor: Colors.indigo[900],
        centerTitle: false,
      ),
      body:
      Stack(
        children: [
        BackgroundWidget(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: TextField(
            controller: userController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(), labelText: "Quiero comprar"),
          )),
          Image(
            image: AssetImage("GreenApple.JPG"),
          ),
          Image(
            image: AssetImage("RedApple.JPG"),
          ),
          Image(
            image: AssetImage("YellowApple.JPG"),
          ),
          Image(
            image: AssetImage("Add.JPG"),
          )
        ],)
        ])
    );
  }
}