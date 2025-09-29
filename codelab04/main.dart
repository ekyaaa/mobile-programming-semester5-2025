void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  print(tukar((1, 2)));

  (String, int) mahasiswa = ("Ekya Muhammad", 2341720111);
  print(mahasiswa);

  var mahasiswa2 = ('Ekya Muhammad', a: 2, b: true, '2341720111');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
