void main() {
  menu.tampilkanmenu();
  for (var menu in tampilkanDetail) {
    if (menu['tersedia'] == true) {
      print("${menu['nama']}");
    }
  }
}

class tampilkanDetail() {
  String nama;
  int harga;
  bool tersedia;

  var menu = tampilkanDetail("Ayam Geprek", 18000, true);

  tampilkanMenu() {
    print("=== DETAIL MENU ===");
    print("Nama    : ${menu.nama}");
    print("Harga   : Rp ${menu.harga}");
    print("Terseda : ${menu.tersedia}");
  } 
} 