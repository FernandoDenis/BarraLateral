import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          children: <Widget>[
            DrawerHeader(
              child: Text("Menu lateral",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(
                color: Colors.blue,
                // image: DecorationImage(
                //     image: Image.network(
                //         "https://ih1.redbubble.net/image.2961886891.8727/st,small,507x507-pad,600x600,f8f8f8.u1.jpg"))
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Catalogos"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.inventory),
              title: Text("Inventario"),
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Salir"),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Menu Lateral (Drawer)'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
