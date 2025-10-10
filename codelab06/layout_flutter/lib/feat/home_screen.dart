import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../feat/notifier/home_scroll_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      ref.read(scrollProvider.notifier).onScroll(_scrollController.offset);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        SizedBox(height: 40,),
        Image.asset(
          'assets/images/lakes.jpg',
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
        ),
        ...List.generate(20, (index) => ListTile(title: Text('Item $index'))),
      ],
    );
  }
}
