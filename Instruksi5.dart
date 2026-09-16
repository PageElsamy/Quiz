void main() {
  int harga = 100000;
  double persen = 20;
  double diskon = hitungDiskon(harga, persen);
  int totalBayar = harga + diskon.toInt();
    print("Harga Awal  : $harga");
    print("Diskon      : ${persen.toInt()} %");
    print("Potongan    : ${diskon.toInt()}");
    print("Total Bayar : $totalBayar");
}

double hitungDiskon(int harga, double persen) {
  return harga * (persen / 100);
}