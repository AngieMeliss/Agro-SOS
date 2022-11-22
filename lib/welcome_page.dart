import 'package:flutter/material.dart';
import 'background_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Quiero...',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 11, 3, 121)),
                    onPressed: () {
                      Navigator.pushNamed(context, "homePage");
                    },
                    child: const Text("Vender (Soy Agricultor)", style: TextStyle(color: Colors.white),))),
              ),
              Padding(
                padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 11, 3, 121)),
                    onPressed: () {
                      Navigator.pushNamed(context, "buyPage");
                    },
                    child: const Text("Comprar (Soy consumidor)", style: TextStyle(color: Colors.white),))),
              ),
              Padding(
                padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 11, 3, 121)),
                    onPressed: () {
                      //Navigator.pushNamed(context, "login");
                    },
                    child: const Text("Soy empresa", style: TextStyle(color: Colors.white),))),
              )
            ]),
        )]
      )
    );
  }
}