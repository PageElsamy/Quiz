void main() {
  String nama = "Nasi Goreng";
  int harga = 15000;
  int jumlah = 3;
  int subtotal = harga * jumlah;
  double pajak = subtotal * 10 / 100;
  int totalBayar = subtotal + pajak.toInt();

  print("");
  print("Nama Produk : $nama");
  print("Harga       : Rp $harga");
  print("Jumlah Beli : $jumlah");
  print("Subtotal    : Rp $subtotal");
  print("Pajak 10%   : Rp ${pajak.toInt()}");
  print("Total Bayar : Rp $totalBayar");
}