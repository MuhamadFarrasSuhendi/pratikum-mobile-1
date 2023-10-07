import 'dart:io';

double hitungLuasLingkaran(double jariJari) {
  double luas = 3.14 * jariJari * jariJari;
  return luas;
}


void main() {
  stdout.write('Masukkan jari-jari lingkaran: ');
  String input = stdin.readLineSync()!;
  
  double jariJari = double.parse(input);

  double luasLingkaran = hitungLuasLingkaran(jariJari);
  print('Luas lingkaran dengan jari-jari $jariJari adalah $luasLingkaran');
}


