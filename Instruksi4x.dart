void main() {
  int nilai;
  String status;

  Map<String, dynamic> dataMahasiswa = {
    'nama' : 'Budi',
    'nim' : 230101,
    'jurusan' : 'Teknik Informatika',
    'nilai' : 85
  };

  if (nilai >= 75) {
    status = "Lulus";
  } else {
    status = "Tidak Lulus";
  }

  print("=== DATA MAHASISWA ===");
  print("Nama     : ${dataMahasiswa['nama']}");
  print("NIM      : ${dataMahasiswa['nim']}");
  print("Jurusan  : ${dataMahasiswa['jurusan']}");
  print("Nilai    : ${dataMahasiswa['nilai']}");
  print("Status   : $status");
} 