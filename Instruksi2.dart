void main() {
  String nama = "Andi";
  int nilai = 78;
  String status;
  
  if (nilai >= 75) {
    status = "Lulus";
  } else {
    status = "Tidak Lulus";
  }

  print("Nama Mahasiswa : $nama");
  print("Nilai          : $nilai");
  print("Status         : $status");
}