import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                _selectedIndex == 0
                    ? 'assets/home_active.png'
                    : 'assets/home.png',
              ),
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                _selectedIndex == 1
                    ? 'assets/bookmark_active.png'
                    : 'assets/bookmark.png',
              ),
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                _selectedIndex == 2
                    ? 'assets/profile_active.png'
                    : 'assets/profile.png',
              ),
              height: 24,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
