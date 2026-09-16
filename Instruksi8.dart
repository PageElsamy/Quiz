void main() {
  var menu = MenuFood("Mie Ayam", 12000);
  menu.tampilkanMenu();
}

class MenuFood {
  String nama;
  int _harga;

  MenuFood(this.nama, this._harga);

  int get harga => _harga;

  set harga(int hargaBaru) {
    if (hargaBaru >= 0){
      _harga = hargaBaru;
    }
  }

  tampilkanMenu() {
    print("Nama     : $nama");
    print("Harga    : Rp $harga");
  }
}