void main() {
  Menu food = Food("Ayam Geprek", 18000);
  Menu drink = Drink("Es Teh", 5000);
  print("=== DAFTAR PRODUK ===");
  food.tampilkanDetail();
  drink.tampilkanDetail();
}

abstract class Menu {
  String nama;
  int harga;

  Menu(this.nama, this.harga);

  void tampilkanDetail();
}

class Food extends Menu {
  Food(String nama, int harga) : super(nama, harga);

  @override
  void tampilkanDetail() {
    print("Food  :");
    print("Nama  : $nama");
    print("Harga : Rp $harga");
    print("");
  }
}

class Drink extends Menu {
  Drink(String nama, int harga) : super(nama, harga);

  @override
  void tampilkanDetail() {
    print("Drink :");
    print("Nama  : $nama");
    print("Harga : Rp $harga");
    print("");
  }
}