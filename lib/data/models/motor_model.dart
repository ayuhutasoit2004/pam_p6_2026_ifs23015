// lib/data/models/motor_model.dart

/// Model data untuk motor sport
class MotorModel {
  const MotorModel({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.spesifikasi,
    required this.keunggulan,
  });

  final String nama;
  final String gambar; // Path asset, contoh: 'assets/images/r1.jpg'
  final String deskripsi;
  final String spesifikasi;
  final String keunggulan;

  MotorModel copyWith({
    String? nama,
    String? gambar,
    String? deskripsi,
    String? spesifikasi,
    String? keunggulan,
  }) {
    return MotorModel(
      nama: nama ?? this.nama,
      gambar: gambar ?? this.gambar,
      deskripsi: deskripsi ?? this.deskripsi,
      spesifikasi: spesifikasi ?? this.spesifikasi,
      keunggulan: keunggulan ?? this.keunggulan,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MotorModel && runtimeType == other.runtimeType && nama == other.nama;

  @override
  int get hashCode => nama.hashCode;

  @override
  String toString() => 'MotorModel(nama: $nama)';
}
