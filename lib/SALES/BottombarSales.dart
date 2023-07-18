import 'package:cloudgo_app/SALES/CloudSALES.dart';
import 'package:flutter/material.dart';
import '../SALES/CloudSALES.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const CloudSales(),
    // const TinTuc(),
    // const ThongBao(),
    // const LienHe(),
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
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(size: 30, color: Colors.blue),
        unselectedIconTheme: const IconThemeData(size: 25, color: Colors.grey),
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'CloudSales',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Lịch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Thêm mới',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Danh sách',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Thông báo',
          ),
        ],
      ),
    );
  }
}
