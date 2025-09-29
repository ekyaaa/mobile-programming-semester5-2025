main() {
  for (var i = 0; i < 202; i++) {
    if (i % 2 != 0 && i % 3 != 0 || (i == 2 || i == 3)) {
      print('$i' + ': Ekya Muhammad Hasfi Fadlilurrahman - 2341720111');
      continue;
    }
    print(i);
  }
}