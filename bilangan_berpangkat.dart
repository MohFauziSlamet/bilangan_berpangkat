/*
DESCRIPTION:
Complete the square sum function so that it squares each number passed into it and then sums the results together.
For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2+ 2^2= 9
*/
  // /// cara 1
  // int funcPow(List<int> n) {
  //   var res = 0;
  //   for (var e in n) {
  //     res += pow(e, 2).toInt();
  //   }
  //   return res;
  // }

  /// cara 2
  // int funcPow(List<int> n) => n.fold(0, (a, b) => a + b * b);

  /// cara 3
  /// [reduce]
  /// Mengurangi koleksi menjadi nilai tunggal dengan menggabungkan elemen koleksi secara berulang menggunakan fungsi yang disediakan.
  /// Iterable harus memiliki setidaknya satu elemen. Jika hanya memiliki satu elemen, elemen tersebut dikembalikan.
  /// Jika tidak, metode ini dimulai dengan elemen pertama dari iterator, dan kemudian menggabungkannya dengan elemen lainnya dalam urutan iterasi, seolah-olah dengan:
  int funcPow(List numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    return numbers
        .map((i) => i * i)
        .reduce((value, element) => value + element);
  }
