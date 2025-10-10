import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'notifier/home_scroll_notifier.dart';

class Layout extends ConsumerWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVisible = ref.watch(scrollProvider);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Main content fills the available space
            Positioned.fill(child: HomeScreen()),

            // Header
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              top: isVisible ? 0 : -80,
              left: 0,
              right: 0,
              child: Container(
                height: 40,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  'Header',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            // Bottom Navbar
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom: isVisible ? 20 : -90,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 250,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white, // warna putih elegan
                    shape: BoxShape.rectangle, // rectangular maksimal
                    borderRadius: BorderRadius.circular(
                      99999,
                    ), // sudut melengkung
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                          0.15,
                        ), // bayangan lembut
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          // aksi ketika tombol Home ditekan
                        },
                        icon: const Icon(Icons.home, color: Colors.black87),
                      ),
                      IconButton(
                        onPressed: () {
                          // aksi ketika tombol Search ditekan
                        },
                        icon: const Icon(Icons.search, color: Colors.black87),
                      ),
                      IconButton(
                        onPressed: () {
                          // aksi ketika tombol Profile ditekan
                        },
                        icon: const Icon(Icons.person, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
