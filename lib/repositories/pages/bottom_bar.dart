import 'package:flutter/material.dart';
import 'package:lab_7/constants/app_colors.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(
      child: Text(
        ' Welcome to Home Page!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        ' Search your favorite items here.',
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Center(
      child: Text(
        ' Settings Page\n\nYou can change your preferences here.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Center(
      child: Text(
        ' Account Page\n\nView or edit your profile information.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
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
      appBar: AppBar(
        title: Text(['Home', 'Search', 'Settings', 'Account'][_selectedIndex]),
        centerTitle: true,
        backgroundColor: AppColors.primary,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}
