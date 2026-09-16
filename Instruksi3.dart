void main() {
  List<String> KantinKampus = [
    "Nasi Goreng",
    "Mie Ayam",
    "Ayam Geprek",
    "Soto Ayam",
    "Es Teh"
  ];

  print("=== DAFTAR MENU KANTINKAMPUS ===");

  for (int i = 0; i < KantinKampus.length; i++){
    print("${i + 1}. ${KantinKampus[i]}");
  }
}