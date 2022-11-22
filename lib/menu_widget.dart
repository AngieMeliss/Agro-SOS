import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('UserName'),
            accountEmail: Text('   '),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("profilePhoto.png",
                  fit: BoxFit.fill,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("profileBackground.jpg")),
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 310,
              height: 380,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Text("Agricultor", style: TextStyle(color: Colors.black, fontSize: 20),),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.nfc_rounded),
                    title: Text('Registrar terreno'),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.paid_rounded),
                    title: Text('Vender productos'),
                    onTap: () {
                   
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.storm_outlined),
                    title: Text('Predicciones'),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('Sugerencias'),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.timeline),
                    title: Text('Historial'),
                    onTap: () {
                      
                    },
                  ),
                ]),
              ),
            ),
          ),
          Divider(),
          TextButton(
            onPressed: () {
              //Navigator.pushNamed(context, "contacts", arguments: [args[0]]);
            },
            child: const Text(
              "Contactos",
              style: TextStyle(
                  color: Color.fromARGB(255, 45, 13, 226),
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //Navigator.pushNamed(context, "training");
            },
            child: const Text(
              "Capacitación",
              style: TextStyle(
                  color: Color.fromARGB(255, 45, 13, 226),
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //Navigator.pushNamed(context, "welcome");
            },
            child: const Text(
              "Cerrar sesión",
              style: TextStyle(
                  color: Color.fromARGB(255, 45, 13, 226),
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
    );
  }
}