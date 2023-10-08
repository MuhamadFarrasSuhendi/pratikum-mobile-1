class Mobil {
  int kapasitas;
  List<Hewan> muatan;

  Mobil(this.kapasitas) : muatan = [];

  void tambahMuatan(Hewan hewan) {
    if (totalMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print('Muatan ditambahkan: ${hewan.berat} kg');
    } else {
      print('Kapasitas penuh, muatan tidak dapat ditambahkan.');
    }
  }

  int totalMuatan() {
    int total = 0;
    for (var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}

class Hewan {
  int berat;

  Hewan(this.berat);
}

void main() {
  Mobil mobil = Mobil(1000); // Mobil dengan kapasitas 1000

  Hewan kucing = Hewan(5);
  Hewan anjing = Hewan(110);
  Hewan gajah = Hewan(1000);

  mobil.tambahMuatan(kucing);
  mobil.tambahMuatan(anjing);
  mobil.tambahMuatan(gajah);

  print('Total berat muatan mobil: ${mobil.totalMuatan()} kg');
}
