import 'package:flutter/material.dart';
import 'package:weather_app_ui/App_styles/app_styles.dart';
import 'package:weather_app_ui/Screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexClicked = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const Text('Weather details'),
    const Text('Thirdscreen'),
    const Text('Profile'),
  ];

  void _onTappedItem(int index) {
    setState(() {
      indexClicked = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onTappedItem,
          currentIndex: indexClicked,
          selectedItemColor: Styles.textColor1,
          unselectedItemColor: Colors.grey.shade400,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          ]),
    );
  }
}
