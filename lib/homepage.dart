import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _index = 1;
  List routes = ["/pageone","/","/pagetwo"];
  
  void navBottom (index) {
    String? currentRoute = ModalRoute.of(context)!.settings.name;
    
    if (routes[index] != currentRoute){
      Navigator.pushNamed(context,routes[index]);
    }
      
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),

      body: Center(
        child: ElevatedButton(
          // Within the `HomePage` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/pageone');
          },
          child: const Text('Launch screen'),
        ),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) => navBottom(index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Pageone',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'HomePage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'PageTwo',
          ),
        ],
      ),

    );
  }
}

