import 'package:buget_sketch_app/sketch_page/view/sketch_page.dart';
import 'package:buget_sketch_app/staristic_page/view/statistic_page.dart';
import 'package:buget_sketch_app/tranzaction_page/view/view.dart';
import 'package:flutter/material.dart';

import '../../main_page/view/view.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [MainPage(), TranzactionPage(), StatisticPage()];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade200,
        currentIndex: _currentIndex,
        onTap: onTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Транзакции",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Аналитика',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 147, 51, 234),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SketchPage()),
          );
        },
        backgroundColor: Color.fromARGB(255, 147, 51, 234),
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 30, color: Colors.white),
      ),
    );
  }
}
