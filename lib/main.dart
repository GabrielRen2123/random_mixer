import 'package:flutter/material.dart';

void main() {
  runApp(RandomMixerApp());
}

class RandomMixerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RandomMixer',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Anuncio 1 como nav bar
          Container(
            color: Colors.grey[800],
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Anuncio 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Botones de menú y configuración
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    // Acción del menú
                  },
                ),
                Text('RandomMixer', style: TextStyle(color: Colors.black, fontSize: 18.0)),
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.black),
                  onPressed: () {
                    // Acción de configuración
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('assets/logo.png'),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'welcome  -user-',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Acción para My groups
                      },
                      icon: Icon(Icons.group),
                      label: Text('My groups'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Acción para Create group
                      },
                      icon: Icon(Icons.add),
                      label: Text('Create group'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Anuncio 2 en la parte inferior
          Container(
            color: Colors.grey[800],
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Anuncio 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción para el FAB
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
