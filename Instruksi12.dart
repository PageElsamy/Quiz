void main() {
  List<MenuFood> daftarMenu = [
      MenuFood("Nasi Goreng", 15000, "Makanan", true),
      MenuFood("Ayam Geprek", 18000, "Makanan", true),
      MenuFood("Mie Ayam", 12000, "Makanan", true),
      MenuFood("Soto Ayam", 13000, "Makanan", true),
      MenuFood("Es Teh Manis", 5000, "Minuman", true)
  ];
  List<OrderItem> pesanan = [
      OrderItem(daftarMenu[0], 1),
      OrderItem(daftarMenu[1], 1),
      OrderItem(daftarMenu[4], 2)
  ];
  sistemKasir(pesanan);
}

class MenuFood {
  String nama;
  int harga;
  String kategori;
  bool tersedia;

  MenuFood(this.nama, this.harga, this.kategori, this.tersedia);
}

class OrderItem {
  MenuFood menu;
  int jumlah;

  OrderItem(this.menu, this.jumlah);

  int hitungSubtotal() {
    return menu.harga * jumlah;
  }
}

double hitungDiskon(int subtotal, double persen) {
  return subtotal * (persen / 100);
}

void sistemKasir(List<OrderItem> pesanan) {
    print("=== KASIR KANTINKAMPUS ===");
    print("");
    print("Pelanggan : Siti");
    print("");

    int subtotal = 0;
    for (var item in pesanan) {
      int st = item.hitungSubtotal();
      subtotal += st;
      print("${item.menu.nama} x ${item.jumlah} = Rp $st");
    }

    double diskon = hitungDiskon(subtotal, 10);
    int totalAkhir = subtotal - diskon.toInt();

    print("");
    print("Subtotal    = Rp $subtotal");
    print("Diskon 10%  = Rp ${diskon.toInt()}");
    print("Total Bayar = Rp $totalAkhir");
}