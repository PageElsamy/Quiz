void main() {
  List<MenuFood> daftarMenu = [
      MenuFood("Nasi Goreng", 15000, "Makanan", true),
      MenuFood("Mie Ayam", 12000, "Makanan", true),
      MenuFood("Ayam Geprek", 18000, "Makanan", true),
      MenuFood("Soto Ayam", 14000, "Makanan", false),
      MenuFood("Es Teh", 5000, "Minuman", true)
    ];
    print("=== DAFTAR MENU ===");
    for (int i = 0; i < daftarMenu.length; i++) {
      var menu = daftarMenu[i];
      print("${menu.nama} - Rp ${menu.harga}");
    }
    food.tampilkanDetail();
    drink.tampilkanDetail();
}

class MenuFood {
  String nama;
  int harga;
  String kategori;
  bool tersedia;

  MenuFood(this.nama, this.harga, this.kategori, this.tersedia);
}

  class Food extends Menu {
    Food(String nama, int harga) : super(nama, harga);

    @override
    String tampilkanJenis() => "Makanan";

    @override
    void tampilkanDetail() {
      print("Nama  : $nama");
      print("Harga : Rp $harga");
      print("Jenis : ${tampilkanJenis()}");
    }
  }

  class Drink extends Menu {
    Drink(String nama, int harga) : super(nama, harga);

    @override
    String tampilkanJenis() => "Minuman";

    @override
    void tampilkanDetail() {
      print("Nama  : $nama");
      print("Harga : Rp $harga");
      print("Jenis : ${tampilkanJenis()}");
    }
  }

  abstract class Menu {
    String nama;
    int harga;

    Menu(this.nama, this.harga);

      String tampilkanJenis();

      void tampilkanDetail();
  }