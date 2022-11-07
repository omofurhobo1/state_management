import 'package:flutter/material.dart';
import 'package:stateapp/widgets/favourite_widget.dart';
import 'package:stateapp/widgets/home__widget.dart';
import 'package:stateapp/widgets/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _appBarOption = [
    Text('Home'),
    Text('Favorites'),
    Text('Profile')
  ];
  static const List _widgetOption = <Widget>[
    HomeWidget(),
    Favorite(),
    ProfileWiget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarOption[_selectedIndex],
      ),
      body: _widgetOption[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_work_rounded), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
