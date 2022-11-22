import 'package:flutter/material.dart';
import 'background_widget.dart';
import 'menu_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text("Agro S.O.S", style: TextStyle(color: Colors.white, fontSize: 20)),
        backgroundColor: Colors.indigo[900],
        centerTitle: false,
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
        BackgroundWidget(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
            image: AssetImage("Map.jpeg")),
            Card(
              shadowColor: Colors.black,
              color: Color.fromARGB(255, 170, 204, 245),
              child: SizedBox(
                width: 300,
                height: 250,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                          'Estado del suelo:   ',
                          style: TextStyle(
                            fontFamily: 'RobotSlab',
                            fontSize: 15.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.greenAccent[400],
                          radius: 18),
                        Text(
                          '   Favorable',
                          style: TextStyle(
                            fontFamily: 'Rajdhani',
                            fontSize: 20.0,
                            color: Colors.black),
                        ),
                      ]),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(),
                        child: Text(
                          "Detalles: \n\n"
                          "- Temperatura: 20°C\n"
                          "- Humedad relativa:  73.05% \n"
                          "- pH: 7.2 \n"
                          "- Nitrogeno:  14.28 % \n"
                          "- Carbono: 12.90 % \n"
                          "- Cloruros: 2.05% \n"
                          "- Fosfatos: 1.65% \n"
                          "- Oxigeno: 78.65% \n"
                          "- Clorofila: Alta \n"
                          "- Conductividad eléctrica: -- \n", maxLines: 50,
                        style: TextStyle(color: Colors.black, fontSize: 12),),
                      ),
                    ]
                  )
                )
              )
            )
          ],
        )
      ],)
    );
  }
}