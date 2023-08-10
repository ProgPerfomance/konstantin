import 'package:flutter/material.dart';
import 'package:konstantin/view/CatalogScreen/CatalogScreen.dart';
import 'package:konstantin/view/FavoritScreen/FavoriteScreen.dart';
import 'package:konstantin/view/ProfileScreen/ProfileScreen.dart';
import 'package:konstantin/view/StorageScreen/StorageScreen.dart';

import '../MainScreen/CatalogScreen.dart';

int _selectIndex = 0;
List screensList = [
  MainScreen(),
  CatalogScreen(),
  StorageScreen(),
  FavoriteScreen(),
  ProfileScreen(),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        //  unselectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 10),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Объявления'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Каталог'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Корзина'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Избранное',),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль',),
        ],
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}
