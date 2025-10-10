import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Header',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}