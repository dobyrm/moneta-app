import 'package:flutter/material.dart';

import '../../../domain/models/stats.dart';

class StatsWidget extends StatelessWidget {
  final Stats stats;

  const StatsWidget({
    super.key,
    required this.stats,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Total: \$${stats.total}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text('Transactions: ${stats.transactions}'),
          ],
        ),
      ),
    );
  }
}
