import 'package:flutter/material.dart';
import 'package:mini_projek/Home/favorite_page.dart';
import 'package:mini_projek/Home/home_page.dart';
import 'package:mini_projek/Home/cart_page.dart';
import 'package:mini_projek/Home/profile_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  State<BotNavBar> createState() => _HomeState();
}

class _HomeState extends State<BotNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    HomePage(),
    FavoritePage(),
    CartPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 53, 202, 167),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        onTap: _onItemTapped,
        iconSize: 25,
      ),
    );
  }
}
