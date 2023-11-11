import 'package:flutter/material.dart';

import '../../core/extensions.dart';
import '../profile.dart';
import 'jobs_dashboard.dart';

class BottomMenu {
  final Widget screen;
  final String title;
  final IconData icon;

  BottomMenu({
    required this.screen,
    required this.title,
    required this.icon,
  });
}

final bottomMenus = [
  BottomMenu(
      screen: const JobsDashboard(),
      title: 'Orders',
      icon: Icons.format_indent_decrease),
  BottomMenu(
    screen: const Profile(),
    title: 'Profile',
    icon: Icons.account_circle,
  ),
];

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.primary,
        title: Text(
          bottomMenus[_selectedIndex].title,
          style: context.titleLarge?.copyWith(
            color: context.onPrimary,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomMenus.map((menu) {
          return BottomNavigationBarItem(
            icon: Icon(menu.icon),
            label: menu.title,
          );
        }).toList(),
        /* items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_indent_decrease),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ], */
        currentIndex: _selectedIndex,
        selectedItemColor: context.primary,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: bottomMenus[_selectedIndex].screen,
      ),
    );
  }
}
