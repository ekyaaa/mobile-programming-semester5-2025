
import 'package:faker/faker.dart';

class Item {
  String nama;
  String imgPath;
  String description;
  int rating = 0;

  Item({
    required this.nama,
    required this.imgPath,
    required this.description,
    this.rating = 0,
  });
}