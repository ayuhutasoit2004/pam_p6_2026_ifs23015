// test/integration/app_navigation_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pam_p6_2026_ifs23015_motors/app.dart';

void main() {
  group('App Navigation Integration', () {
    testWidgets('aplikasi dapat dijalankan', (tester) async {
      await tester.pumpWidget(const MotorSportApp());
      await tester.pumpAndSettle();
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('halaman Home tampil saat pertama dibuka', (tester) async {
      await tester.pumpWidget(const MotorSportApp());
      await tester.pumpAndSettle();
      expect(find.text('Home'), findsWidgets);
    });

    testWidgets('navigasi ke halaman Motors', (tester) async {
      await tester.pumpWidget(const MotorSportApp());
      await tester.pumpAndSettle();
      await tester.tap(find.text('Motors'));
      await tester.pumpAndSettle();
      expect(find.text('Yamaha YZF-R1'), findsOneWidget);
    });

    testWidgets('navigasi ke halaman Profile', (tester) async {
      await tester.pumpWidget(const MotorSportApp());
      await tester.pumpAndSettle();
      // Tap pada NavigationDestination Profile di bottom nav
      await tester.tap(find.text('Profile').last);
      await tester.pumpAndSettle();
      expect(find.text('ifs23015'), findsOneWidget);
    });

    testWidgets('bottom navigation menampilkan 3 item', (tester) async {
      await tester.pumpWidget(const MotorSportApp());
      await tester.pumpAndSettle();
      expect(find.text('Home'), findsWidgets);
      expect(find.text('Motors'), findsWidgets);
      expect(find.text('Profile'), findsWidgets);
    });
  });
}
