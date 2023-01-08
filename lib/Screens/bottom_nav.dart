import 'package:flutter/material.dart';
import 'package:weather_app_ui/Screens/home_screen.dart';
import 'package:weather_app_ui/Screens/second_screen.dart';

class BottomNaviScreen extends StatefulWidget {
  const BottomNaviScreen({super.key});

  @override
  State<BottomNaviScreen> createState() => _BottomNaviScreenState();
}

class _BottomNaviScreenState extends State<BottomNaviScreen> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SecondScreen(),
    const Center(child: Text('Navigation')),
    const Center(child: Text('Profile')),
  ];

  void _itemOnTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.grey.shade600,
          unselectedItemColor: Colors.grey.shade300,
          currentIndex: selectedIndex,
          onTap: _itemOnTapped,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/HomeVectorinactive.png',
                  height: 30,
                ),
                label: '',
                activeIcon: Column(
                  children: const [
                    Image(
                      image: AssetImage('images/HomeVectoractive.png'),
                      height: 30,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey,
                    )
                  ],
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/Vectorinactive.png',
                  height: 30,
                ),
                label: '',
                activeIcon: Column(
                  children: const [
                    Image(
                      image: AssetImage('images/Vectoractive.png'),
                      height: 30,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey,
                    )
                  ],
                )),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/Thirdiconvector.png',
                  height: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/PersonVector.png',
                  height: 30,
                ),
                label: ''),
          ]),
      body: _pages[selectedIndex],
    );
  }
}
