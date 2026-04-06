// lib/features/motors/motors_detail_screen.dart

import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';
import '../../data/models/motor_model.dart';
import '../../shared/widgets/loading_widget.dart';
import '../../shared/widgets/top_app_bar_widget.dart';

class MotorsDetailScreen extends StatefulWidget {
  const MotorsDetailScreen({super.key, required this.motorName});

  final String motorName;

  @override
  State<MotorsDetailScreen> createState() => _MotorsDetailScreenState();
}

class _MotorsDetailScreenState extends State<MotorsDetailScreen> {
  MotorModel? _motor;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final result = DummyData.getMotorsData()
          .where((m) => m.nama == widget.motorName)
          .firstOrNull;
      if (mounted) {
        setState(() => _motor = result);
        if (result == null && mounted) {
          Navigator.of(context).pop();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_motor == null) {
      return Scaffold(
        appBar: TopAppBarWidget(
          title: widget.motorName,
          showBackButton: true,
        ),
        body: const LoadingWidget(),
      );
    }

    return Scaffold(
      appBar: TopAppBarWidget(
        title: _motor!.nama,
        showBackButton: true,
      ),
      body: _MotorsDetailBody(motor: _motor!),
    );
  }
}

class _MotorsDetailBody extends StatelessWidget {
  const _MotorsDetailBody({required this.motor});

  final MotorModel motor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Gambar dan nama
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Image.asset(
                  motor.gambar,
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 220,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: Icon(
                      Icons.two_wheeler,
                      size: 80,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  motor.nama,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Section Deskripsi
          _InfoCard(title: 'Deskripsi', content: motor.deskripsi),
          const SizedBox(height: 16),

          // Section Spesifikasi
          _InfoCard(title: 'Spesifikasi', content: motor.spesifikasi),
          const SizedBox(height: 16),

          // Section Keunggulan
          _InfoCard(title: 'Keunggulan', content: motor.keunggulan),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 4,
      color: colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Divider(height: 16),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
