import 'package:banca_credit/presentation/home/historial.dart';
import 'package:banca_credit/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectdIndex = 0;

  final screens = [const HomePapge(), const HistorialScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectdIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectdIndex,
        onTap: (value) {
          setState(() {
            selectdIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
            backgroundColor: Color(0xFF5428F1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Historial créditos',
            backgroundColor: Color(0xFF5428F1)
          ),
        ],
      ),
    );
  }
}