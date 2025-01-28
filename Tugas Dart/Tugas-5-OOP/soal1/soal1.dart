main(List<String> args) {
  Segitiga hitung;
  hitung = new Segitiga();
  hitung.setengah;
  hitung.alas;
  hitung.tinggi;

  double hitungLuas = hitung.luasSegitiga();
  print(hitungLuas);
}

class Segitiga {
  double setengah = 0.5;
  double alas = 20.0;
  double tinggi = 30.0;

  double luasSegitiga() {
    return this.setengah * this.alas * this.tinggi;
  }
}
