// lib/features/motors/motors_screen.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/route_constants.dart';
import '../../data/dummy_data.dart';
import '../../data/models/motor_model.dart';
import '../../shared/widgets/top_app_bar_widget.dart';

class MotorsScreen extends StatefulWidget {
  const MotorsScreen({super.key});

  @override
  State<MotorsScreen> createState() => _MotorsScreenState();
}

class _MotorsScreenState extends State<MotorsScreen> {
  List<MotorModel> _motors = DummyData.getMotorsData();
  String _searchQuery = '';

  void _onSearchQueryChange(String query) {
    setState(() {
      _searchQuery = query;
      _motors = DummyData.getMotorsData()
          .where((m) => m.nama.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBarWidget(
        title: 'Motors',
        withSearch: true,
        searchQuery: _searchQuery,
        onSearchQueryChange: _onSearchQueryChange,
      ),
      body: _MotorsBody(
        motors: _motors,
        onOpen: (motorName) {
          context.go('${RouteConstants.motors}/$motorName');
        },
      ),
    );
  }
}

class _MotorsBody extends StatelessWidget {
  const _MotorsBody({required this.motors, required this.onOpen});

  final List<MotorModel> motors;
  final ValueChanged<String> onOpen;

  @override
  Widget build(BuildContext context) {
    if (motors.isEmpty) {
      return Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Tidak ada data motor!',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: motors.length,
      itemBuilder: (context, index) {
        return _MotorItemCard(
          motor: motors[index],
          onOpen: onOpen,
        );
      },
    );
  }
}

class _MotorItemCard extends StatelessWidget {
  const _MotorItemCard({required this.motor, required this.onOpen});

  final MotorModel motor;
  final ValueChanged<String> onOpen;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      color: colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onOpen(motor.nama),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // Gambar motor
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  motor.gambar,
                  width: 80,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 80,
                    height: 70,
                    color: colorScheme.primaryContainer,
                    child: Icon(Icons.two_wheeler, color: colorScheme.primary, size: 36),
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Nama dan deskripsi
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      motor.nama,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      motor.deskripsi,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
