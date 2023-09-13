import 'package:first_project/pages/cart_details.dart';
import 'package:first_project/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/favourite_screen.dart';
import 'pages/profile_screen.dart';
import 'package:provider/provider.dart';
import 'provider/favourite_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(_)=>FavoriteProvider()),
      ChangeNotifierProvider(create:(_)=>CartProvider()),
  ],
  child:MaterialApp(
  title:'E Commerce Shop',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
  colorSchemeSeed: Colors.red,
  scaffoldBackgroundColor: Colors.grey.shade100,
  ),
  home: MyHomePage(title: "E commerce Shop"),
  ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex= 0;
  List screens = [
     HomeScreen(),
     FavoriteScreen(),
     ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title:const Text("E-Commerce App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartDetails()
              ),
            ),
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],

      ),
      body:screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          onTap: (value) {
          setState(()=>currentIndex =value);
          },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
          items: const[
          BottomNavigationBarItem(
              label:"Home",
              icon:Icon(Icons.home),
          ),
        BottomNavigationBarItem(
          label:"Favorite",
          icon:Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label:"Profile",
          icon:Icon(Icons.person),
        ),
      ],
      ),
    );
  }
}


