import 'package:flutter/material.dart';
import 'package:homework_app_10/screen/checkout.dart';
import 'package:homework_app_10/screen/home_page.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});

  @override
  _BottomNavigationBar1State createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const Checkout(),
    Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: const Center(
        child:
            Text('This is the Profile Screen', style: TextStyle(fontSize: 24)),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/grid.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/shopping-cart.png"),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/user.png"),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("homPage1"),
      ),
    );
  }
}
