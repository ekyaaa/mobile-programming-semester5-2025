import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Sample data produk
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'https://images.unsplash.com/photo-1514996937319-344454492b37?w=500',
      stock: 50,
      rating: 4.5,
      description: 'Gula putih berkualitas tinggi untuk kebutuhan dapur Anda.',
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'https://images.unsplash.com/photo-1598440947619-2c35fc9aa908?w=500',
      stock: 100,
      rating: 4.8,
      description: 'Garam dapur yang murni dan bersih untuk masakan lezat.',
    ),
    Item(
      name: 'Rice',
      price: 15000,
      imageUrl: 'https://images.unsplash.com/photo-1586201375761-83865001e31c?w=500',
      stock: 30,
      rating: 4.7,
      description: 'Beras premium dengan kualitas terbaik, pulen dan wangi.',
    ),
    Item(
      name: 'Cooking Oil',
      price: 25000,
      imageUrl: 'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=500',
      stock: 20,
      rating: 4.3,
      description: 'Minyak goreng berkualitas untuk memasak yang lebih sehat.',
    ),
    Item(
      name: 'Eggs',
      price: 30000,
      imageUrl: 'https://images.unsplash.com/photo-1582722872445-44dc5f7e3c8f?w=500',
      stock: 15,
      rating: 4.6,
      description: 'Telur ayam segar dengan kandungan protein tinggi.',
    ),
    Item(
      name: 'Flour',
      price: 12000,
      imageUrl: 'https://images.unsplash.com/photo-1628377541823-9b2b6cc49da6?w=500',
      stock: 40,
      rating: 4.4,
      description: 'Tepung terigu serbaguna untuk berbagai macam kue dan roti.',
    ),
    Item(
      name: 'Milk',
      price: 18000,
      imageUrl: 'https://images.unsplash.com/photo-1550583724-b2692b85b150?w=500',
      stock: 25,
      rating: 4.9,
      description: 'Susu segar pasteurisasi kaya nutrisi untuk kesehatan.',
    ),
    Item(
      name: 'Coffee',
      price: 35000,
      imageUrl: 'https://images.unsplash.com/photo-1447933601403-0c6688de566e?w=500',
      stock: 10,
      rating: 4.8,
      description: 'Kopi premium dengan aroma dan rasa yang nikmat.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(
                    item: item,
                    onTap: () {
                      context.go('/item', extra: item);
                    },
                  );
                },
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
