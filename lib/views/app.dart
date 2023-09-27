import 'package:flutter/material.dart';
import 'package:rights_quest/views/chapters_tab.dart';
import 'package:rights_quest/views/home.dart';
import 'package:rights_quest/widgets/top_app_bar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF89E1E1)),
        useMaterial3: true,
      ),

      home: HomePage(),
      debugShowCheckedModeBanner: false,
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
      appBar: TopAppBar(),/*AppBar(
        title: Text("GAMEE"),
        backgroundColor: Colors.lightGreen,
      ),*/
      bottomNavigationBar: NavigationBar(
        height: 65,
        backgroundColor: Theme.of(context).primaryColor,
        indicatorShape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Color.fromARGB(255, 235, 235, 235),width: 15),
        ),
        indicatorColor: const Color.fromARGB(255, 235, 235, 235),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, size: 40,),
            icon: Icon(Icons.home_outlined, size: 30,),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school, size: 40,),
            icon: Icon(Icons.school_outlined, size: 30 ,),
            label: 'Chapters',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle, size: 40,),
            icon: Icon(Icons.account_circle_outlined, size: 30,),
            label: 'User Profile',
          ),
        ],
      ),

      body: SafeArea(
        child: <Widget>[
          Home(),

          ChaptersTab(),

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

