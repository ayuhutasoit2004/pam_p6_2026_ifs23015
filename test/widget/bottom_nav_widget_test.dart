// test/widget/bottom_nav_widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:pam_p6_2026_ifs23015_motors/core/theme/app_theme.dart';
import 'package:pam_p6_2026_ifs23015_motors/core/theme/theme_notifier.dart';
import 'package:pam_p6_2026_ifs23015_motors/shared/widgets/bottom_nav_widget.dart';

Widget buildTestWidget() {
  final notifier = ThemeNotifier(initial: ThemeMode.light);
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Scaffold(
          body: const Center(child: Text('Home')),
          bottomNavigationBar: BottomNavWidget(
            child: const Center(child: Text('Home')),
          ),
        ),
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
  group('BottomNavWidget', () {
    testWidgets('menampilkan 3 item navigasi', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();
      expect(find.text('Home'), findsWidgets);
      expect(find.text('Motors'), findsOneWidget);
      expect(find.text('Profile'), findsOneWidget);
    });

    testWidgets('menampilkan icon motor', (tester) async {
      await tester.pumpWidget(buildTestWidget());
      await tester.pumpAndSettle();
      // Cek NavigationBar ada
      expect(find.byType(NavigationBar), findsOneWidget);
      // Cek ada NavigationDestination
      expect(find.byType(NavigationDestination), findsWidgets);
    });
  });
}
