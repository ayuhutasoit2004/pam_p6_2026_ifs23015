// lib/data/dummy_data.dart

import 'models/motor_model.dart';

/// Kelas untuk menyimpan data statis (dummy)
class DummyData {
  DummyData._();

  static List<MotorModel> getMotorsData() {
    return const [
      MotorModel(
        nama: 'Yamaha YZF-R1',
        gambar: 'assets/images/r1.jpg',
        deskripsi: 'Yamaha YZF-R1 adalah superbike kelas atas dari Yamaha yang terinspirasi dari motor balap MotoGP. Dikenal dengan performa mesin yang luar biasa dan teknologi canggih.',
        spesifikasi: 'Mesin: 998cc Inline-4, Tenaga: 200 HP, Torsi: 113 Nm, Berat: 199 kg, Top Speed: 299 km/h.',
        keunggulan: 'Teknologi MotoGP crossplane crankshaft, sistem elektronik lengkap (traction control, slide control, launch control), dan aerodinamika agresif.',
      ),
      MotorModel(
        nama: 'Yamaha YZF-R6',
        gambar: 'assets/images/r6.jpg',
        deskripsi: 'Yamaha YZF-R6 adalah supersport 600cc legendaris dari Yamaha yang sangat populer di ajang balap World Supersport Championship.',
        spesifikasi: 'Mesin: 599cc Inline-4, Tenaga: 117 HP, Torsi: 61.7 Nm, Berat: 190 kg, Top Speed: 255 km/h.',
        keunggulan: 'Handling yang sangat responsif, mesin high-revving hingga 17.500 RPM, dan desain aerodinamis yang terinspirasi R1.',
      ),
      MotorModel(
        nama: 'Honda CBR1000RR',
        gambar: 'assets/images/cbr1000rr.jpg',
        deskripsi: 'Honda CBR1000RR atau Fireblade adalah superbike unggulan Honda yang telah melegenda sejak 1992. Dikenal dengan keseimbangan sempurna antara performa dan handling.',
        spesifikasi: 'Mesin: 999cc Inline-4, Tenaga: 214 HP (SP2), Torsi: 113 Nm, Berat: 201 kg, Top Speed: 299 km/h.',
        keunggulan: 'Teknologi Throttle By Wire, Cornering ABS, Honda Selectable Torque Control, dan suspensi Öhlins pada versi SP.',
      ),
      MotorModel(
        nama: 'Honda CBR600RR',
        gambar: 'assets/images/cbr600rr.jpg',
        deskripsi: 'Honda CBR600RR adalah supersport 600cc Honda yang terkenal dengan kestabilan tinggi di lintasan balap dan jalan raya.',
        spesifikasi: 'Mesin: 599cc Inline-4, Tenaga: 120 HP, Torsi: 66 Nm, Berat: 187 kg, Top Speed: 260 km/h.',
        keunggulan: 'Unit Pro-Link rear suspension, ram-air intake system, dan desain kompak yang memudahkan manuver di tikungan.',
      ),
      MotorModel(
        nama: 'Kawasaki ZX-10R',
        gambar: 'assets/images/zx10r.jpg',
        deskripsi: 'Kawasaki Ninja ZX-10R adalah superbike Kawasaki yang sangat kompetitif di WorldSBK. Motor ini terkenal dengan akselerasi brutal dan teknologi canggih.',
        spesifikasi: 'Mesin: 998cc Inline-4, Tenaga: 203 HP, Torsi: 114.9 Nm, Berat: 207 kg, Top Speed: 299 km/h.',
        keunggulan: 'KCMF (Kawasaki Chassis Management Function), Cornering Management Function, dan teknologi dari motor balap WorldSBK.',
      ),
      MotorModel(
        nama: 'Kawasaki ZX-6R',
        gambar: 'assets/images/zx6r.jpg',
        deskripsi: 'Kawasaki Ninja ZX-6R adalah supersport 636cc yang unik karena berkapasitas sedikit lebih besar dari standar 600cc, memberikan torsi ekstra.',
        spesifikasi: 'Mesin: 636cc Inline-4, Tenaga: 130 HP, Torsi: 70.8 Nm, Berat: 193 kg, Top Speed: 265 km/h.',
        keunggulan: 'Kapasitas 636cc memberikan torsi lebih besar di putaran rendah, KTRC (Kawasaki Traction Control), dan Power Mode selector.',
      ),
      MotorModel(
        nama: 'Suzuki GSX-R1000',
        gambar: 'assets/images/gsxr1000.jpg',
        deskripsi: 'Suzuki GSX-R1000 adalah superbike ikonik dari Suzuki yang telah memenangkan banyak gelar di berbagai ajang balap dunia selama puluhan tahun.',
        spesifikasi: 'Mesin: 999.8cc Inline-4, Tenaga: 202 HP, Torsi: 117.6 Nm, Berat: 202 kg, Top Speed: 299 km/h.',
        keunggulan: 'Variable Valve Timing (VVT) pertama di superbike, Motion Track Brake System, dan desain ringan berkat frame aluminium.',
      ),
      MotorModel(
        nama: 'Suzuki GSX-R600',
        gambar: 'assets/images/gsxr600.jpg',
        deskripsi: 'Suzuki GSX-R600 adalah supersport 600cc yang terkenal dengan performa konsisten dan keandalan tinggi, menjadi pilihan populer di lintasan balap.',
        spesifikasi: 'Mesin: 599cc Inline-4, Tenaga: 124 HP, Torsi: 69 Nm, Berat: 183 kg, Top Speed: 255 km/h.',
        keunggulan: 'Bobot yang sangat ringan di kelasnya, Suzuki Drive Mode Selector, dan suspensi yang dapat disetel untuk kebutuhan balap.',
      ),
      MotorModel(
        nama: 'Ducati Panigale V4',
        gambar: 'assets/images/panigalev4.jpg',
        deskripsi: 'Ducati Panigale V4 adalah superbike Italia dengan mesin V4 yang terinspirasi langsung dari motor MotoGP Desmosedici. Simbol kemewahan dan performa ekstrem.',
        spesifikasi: 'Mesin: 1103cc V4, Tenaga: 214 HP, Torsi: 124 Nm, Berat: 198 kg, Top Speed: 299 km/h.',
        keunggulan: 'Mesin Desmosedici Stradale V4, Ducati Electronics (DE) lengkap dengan 6-axis IMU, aerodinamika winglet, dan sasis monocock.',
      ),
      MotorModel(
        nama: 'BMW S1000RR',
        gambar: 'assets/images/s1000rr.jpg',
        deskripsi: 'BMW S1000RR adalah superbike Jerman yang revolusioner dengan teknologi elektronik paling canggih di kelasnya. Motor ini mendominasi WorldSBK saat pertama diluncurkan.',
        spesifikasi: 'Mesin: 999cc Inline-4, Tenaga: 210 HP, Torsi: 113 Nm, Berat: 197 kg, Top Speed: 299 km/h.',
        keunggulan: 'ShiftCam technology (variable valve timing & lift), 6-axis IMU, DTC (Dynamic Traction Control), dan sistem elektronik BMW Motorrad paling lengkap.',
      ),
    ];
  }
}
