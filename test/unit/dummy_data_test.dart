// test/unit/dummy_data_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:pam_p6_2026_ifs23015_motors/data/dummy_data.dart';

void main() {
  group('DummyData', () {
    test('getMotorsData mengembalikan 10 motor', () {
      final motors = DummyData.getMotorsData();
      expect(motors.length, 10);
    });

    test('setiap motor memiliki nama yang tidak kosong', () {
      final motors = DummyData.getMotorsData();
      for (final motor in motors) {
        expect(motor.nama, isNotEmpty);
      }
    });

    test('setiap motor memiliki gambar yang valid', () {
      final motors = DummyData.getMotorsData();
      for (final motor in motors) {
        expect(motor.gambar, startsWith('assets/images/'));
      }
    });

    test('setiap motor memiliki deskripsi yang tidak kosong', () {
      final motors = DummyData.getMotorsData();
      for (final motor in motors) {
        expect(motor.deskripsi, isNotEmpty);
      }
    });

    test('tidak ada nama motor yang duplikat', () {
      final motors = DummyData.getMotorsData();
      final names = motors.map((m) => m.nama).toSet();
      expect(names.length, motors.length);
    });

    test('motor pertama adalah Yamaha YZF-R1', () {
      final motors = DummyData.getMotorsData();
      expect(motors.first.nama, 'Yamaha YZF-R1');
    });

    test('motor terakhir adalah BMW S1000RR', () {
      final motors = DummyData.getMotorsData();
      expect(motors.last.nama, 'BMW S1000RR');
    });
  });
}
