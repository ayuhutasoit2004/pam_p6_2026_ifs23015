// test/screens/motors_screen_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:pam_p6_2026_ifs23015_motors/core/theme/app_theme.dart';
import 'package:pam_p6_2026_ifs23015_motors/core/theme/theme_notifier.dart';
import 'package:pam_p6_2026_ifs23015_motors/features/motors/motors_screen.dart';

Widget buildTestWidget() {
  final notifier = ThemeNotifier(initial: ThemeMode.light);
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MotorsScreen(),
      ),
      GoRoute(
        path: '/motors/:name',
        builder: (context, state) => const Scaffold(body: SizedBox()),
      ),
    ],
  );
  return ThemeProvider(
    notifier: notifier,
    child: MaterialApp.router(
      theme: AppTheme.lightTheme,
      routerConfig: router,
    ),
  );
}

void main() {
  group('MotorsScreen', () {
    testWidgets('menampilkan judul Motors', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();
      expect(find.text('Motors'), findsWidgets);
    });

    testWidgets('menampilkan daftar motor', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();
      // Cek motor pertama yang pasti terlihat di layar
      expect(find.text('Yamaha YZF-R1'), findsOneWidget);
      // Cek ListView ada
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('menampilkan tombol search', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.search), findsOneWidget);
    });
  });
}
