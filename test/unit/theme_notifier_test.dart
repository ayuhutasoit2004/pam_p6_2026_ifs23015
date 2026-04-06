// test/unit/theme_notifier_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pam_p6_2026_ifs23015_motors/core/theme/theme_notifier.dart';

void main() {
  group('ThemeNotifier', () {
    test('nilai awal adalah ThemeMode.light', () {
      final notifier = ThemeNotifier(initial: ThemeMode.light);
      expect(notifier.value, ThemeMode.light);
      expect(notifier.isDark, false);
      notifier.dispose();
    });

    test('toggle dari light ke dark', () {
      final notifier = ThemeNotifier(initial: ThemeMode.light);
      notifier.toggle();
      expect(notifier.value, ThemeMode.dark);
      expect(notifier.isDark, true);
      notifier.dispose();
    });

    test('toggle dari dark ke light', () {
      final notifier = ThemeNotifier(initial: ThemeMode.dark);
      notifier.toggle();
      expect(notifier.value, ThemeMode.light);
      expect(notifier.isDark, false);
      notifier.dispose();
    });

    test('setMode mengubah tema secara eksplisit', () {
      final notifier = ThemeNotifier(initial: ThemeMode.light);
      notifier.setMode(ThemeMode.dark);
      expect(notifier.value, ThemeMode.dark);
      notifier.dispose();
    });
  });
}
