import 'package:flutter/material.dart';
import 'package:rights_quest/views/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: HomePage(),

    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GAMEE"),
        backgroundColor: Colors.lightGreen,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
            indicatorColor: Colors.amber[800],
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.school),
                icon: Icon(Icons.school_outlined),
                label: 'School',
              ),
            ],
      ),

      body: SafeArea(
        child: <Widget>[
          Home(),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text('Page 2'),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text('Page 3'),
          ),
        ][currentPageIndex],
      ),
    );
  }
}

