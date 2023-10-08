Future<List<int>> pengaliList(List<int> dataList, int pengali) async {
  List<int> jumlah = [];

  await Future.forEach(dataList, (int elemen) async {
    int elemenPengali = elemen * pengali;
    jumlah.add(elemenPengali);
  });

  return jumlah;
}

void main() async {
  List<int> data = [1, 2, 3, 4, 5];
  int pengali = 2;

  List<int> hasil = await pengaliList(data, pengali);

  print('Hasil : $hasil');
}
