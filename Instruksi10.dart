void main() {
  List<MenuFood> daftarMenu = [
      MenuFood("Nasi Goreng", 15000, "Makanan", true),
      MenuFood("Mie Ayam", 12000, "Makanan", true),
      MenuFood("Ayam Geprek", 18000, "Makanan", true),
      MenuFood("Soto Ayam", 14000, "Makanan", false),
      MenuFood("Es Teh", 5000, "Minuman", true)
    ];
    print("=== DAFTAR MENU ===");
    for (var menu in daftarMenu) {
      print("${menu.nama} - Rp ${menu.harga} - ${menu.tersedia ? "Tersedia" : "Tidak Tersedia"}");
    }
    print("");

    List<OrderItem> pesanan = [
      OrderItem(daftarMenu[0], 2),
      OrderItem(daftarMenu[4], 2)
    ];

    kantinKampus(pesanan);
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

void kantinKampus(List<OrderItem> pesanan) {
  print("=== PESANAN ===");
  int subtotal = 0;
  for (var item in pesanan) {
    int st = item.hitungSubtotal();
    subtotal += st;
    print("${item.menu.nama} x ${item.jumlah} = Rp $st");
  }

  int totalBayar = subtotal;
  print("");
  print("Total Bayar = Rp $totalBayar");
}