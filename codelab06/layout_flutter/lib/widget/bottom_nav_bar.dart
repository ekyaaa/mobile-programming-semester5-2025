import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Bottom Navigation Bar',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}