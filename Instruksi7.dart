void main() {
  var menu = MenuFood("Nasi Goreng", 15000, true);
  menu.tampilkanMenu();
}

class MenuFood {
  String nama;
  int harga;
  bool tersedia;

  MenuFood(this.nama, this.harga, this.tersedia);

  tampilkanMenu() {
    print("=== MENU FOOD ===");
    print("Nama     : $nama");
    print("Harga    : Rp $harga");
    print("Tersedia : $tersedia");
  }
}