import 'package:faker/faker.dart';
import 'package:layout_flutter/core/model/item.dart';

final List<Item> items = [
  Item(
    nama: 'Nasi Goreng',
    imgPath: 'assets/images/nasi_goreng.jpg',
    description: 'Nasi goreng khas Indonesia dengan bumbu kecap, telur, dan ayam suwir.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Sate Ayam',
    imgPath: 'assets/images/sate_ayam.jpg',
    description: 'Tusukan daging ayam bakar dengan bumbu kacang gurih dan lontong.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Bakso',
    imgPath: 'assets/images/bakso.jpg',
    description: 'Bola daging sapi disajikan dalam kuah kaldu panas dengan mie dan tahu.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Rendang',
    imgPath: 'assets/images/rendang.jpg',
    description: 'Daging sapi dimasak lama dengan santan dan rempah-rempah khas Minang.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Soto Ayam',
    imgPath: 'assets/images/soto_ayam.jpg',
    description: 'Kuah kuning gurih berisi ayam suwir, bihun, telur, dan bawang goreng.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Gado-Gado',
    imgPath: 'assets/images/gado_gado.jpg',
    description: 'Sayuran rebus dengan bumbu kacang, tahu, tempe, dan lontong.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Mie Goreng',
    imgPath: 'assets/images/mie_goreng.jpg',
    description: 'Mi goreng kecap dengan sayuran, telur, dan potongan ayam.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Nasi Uduk',
    imgPath: 'assets/images/nasi_uduk.jpg',
    description: 'Nasi gurih dimasak dengan santan, disajikan dengan ayam goreng dan sambal.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Pempek',
    imgPath: 'assets/images/pempek.jpg',
    description: 'Olahan ikan dan tepung tapioka khas Palembang, disajikan dengan cuko pedas.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Ayam Betutu',
    imgPath: 'assets/images/ayam_betutu.jpg',
    description: 'Ayam berbumbu Bali yang dimasak perlahan hingga empuk dan kaya rasa.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Gudeg',
    imgPath: 'assets/images/gudeg.jpg',
    description: 'Nangka muda dimasak dengan santan dan gula jawa, khas Yogyakarta.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Rawon',
    imgPath: 'assets/images/rawon.jpg',
    description: 'Sup daging sapi berkuah hitam dari kluwek khas Jawa Timur.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Lontong Balap',
    imgPath: 'assets/images/lontong_balap.jpg',
    description: 'Lontong dengan tauge, tahu, lentho, dan kuah gurih khas Surabaya.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Kerak Telor',
    imgPath: 'assets/images/kerak_telor.jpg',
    description: 'Makanan khas Betawi dari beras ketan, telur, dan kelapa sangrai.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Es Teler',
    imgPath: 'assets/images/es_teler.jpg',
    description: 'Minuman segar berisi alpukat, nangka, kelapa muda, dan susu kental manis.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Sate Padang',
    imgPath: 'assets/images/sate_padang.jpg',
    description: 'Sate daging sapi dengan saus kuning kental khas Padang.',
    rating: random.integer(5, min: 1),
  ),
  Item( 
    nama: 'Nasi Liwet',
    imgPath: 'assets/images/nasi_liwet.jpg',
    description: 'Nasi gurih khas Solo yang dimasak dengan santan dan daun pandan.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Sop Buntut',
    imgPath: 'assets/images/sop_buntut.jpg',
    description: 'Sup dengan buntut sapi empuk dan kuah bening berbumbu rempah.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Ayam Geprek',
    imgPath: 'assets/images/ayam_geprek.jpg',
    description: 'Ayam goreng tepung yang dihancurkan dan disiram sambal pedas.',
    rating: random.integer(5, min: 1),
  ),
  Item(
    nama: 'Tempe Mendoan',
    imgPath: 'assets/images/tempe_mendoan.jpg',
    description: 'Tempe tipis dilapisi adonan tepung dan digoreng setengah matang.',
    rating: random.integer(5, min: 1),
  ),
];
