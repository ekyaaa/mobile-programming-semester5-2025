import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScrollNotifier extends StateNotifier<bool> {
  ScrollNotifier() : super(true); // awalnya visible

  double _lastOffset = 0;
  static const double _threshold = 40; // threshold scroll

  void onScroll(double offset) {
    // Jika perbedaan scroll lebih kecil dari threshold, abaikan
    if ((offset - _lastOffset).abs() < _threshold) return;

    if (offset > _lastOffset && state) {
      state = false; // scroll ke bawah → sembunyikan
    } else if (offset < _lastOffset && !state) {
      state = true; // scroll ke atas → tampilkan
    }

    _lastOffset = offset;
  }
}

// Provider
final scrollProvider = StateNotifierProvider<ScrollNotifier, bool>((ref) {
  return ScrollNotifier();
});
