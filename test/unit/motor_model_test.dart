// test/unit/motor_model_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:pam_p6_2026_ifs23015_motors/data/models/motor_model.dart';

void main() {
  group('MotorModel', () {
    const testMotor = MotorModel(
      nama: 'Yamaha YZF-R1',
      gambar: 'assets/images/r1.jpg',
      deskripsi: 'Superbike kelas atas dari Yamaha.',
      spesifikasi: 'Mesin: 998cc Inline-4, Tenaga: 200 HP',
      keunggulan: 'Teknologi MotoGP crossplane crankshaft.',
    );

    test('MotorModel memiliki nilai yang benar', () {
      expect(testMotor.nama, 'Yamaha YZF-R1');
      expect(testMotor.gambar, 'assets/images/r1.jpg');
      expect(testMotor.deskripsi, isNotEmpty);
      expect(testMotor.spesifikasi, isNotEmpty);
      expect(testMotor.keunggulan, isNotEmpty);
    });

    test('copyWith menghasilkan objek baru dengan nilai yang diubah', () {
      final updatedMotor = testMotor.copyWith(nama: 'Yamaha YZF-R6');
      expect(updatedMotor.nama, 'Yamaha YZF-R6');
      expect(updatedMotor.gambar, testMotor.gambar);
    });

    test('equality berdasarkan nama', () {
      const sameMotor = MotorModel(
        nama: 'Yamaha YZF-R1',
        gambar: 'assets/images/r1.jpg',
        deskripsi: 'Deskripsi berbeda.',
        spesifikasi: 'Spesifikasi berbeda.',
        keunggulan: 'Keunggulan berbeda.',
      );
      expect(testMotor, equals(sameMotor));
    });

    test('toString menampilkan nama motor', () {
      expect(testMotor.toString(), contains('Yamaha YZF-R1'));
    });
  });
}
