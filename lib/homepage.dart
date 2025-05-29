import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: const Text("Kaylee Luevano"),
        backgroundColor: Colors.purpleAccent,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 12, 0, 0),
              ),
              onPressed: () {},
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: const Icon(
                Icons.settings,
                color: Color.fromARGB(255, 5, 0, 0),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.pink),
              accountName: const Text("Kaylee Luevano"),
              accountEmail: const Text("kaylee@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                 radius: 120,
                 backgroundImage: NetworkImage(
                  'https://img.freepik.com/vector-gratis/circulo-azul-usuario-blanco_78370-4707.jpg?semt=ais_hybrid&w=740'
                 ),///sAcv8A
                  ),
                ),
              ),
                InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Pagina Inicio "),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
