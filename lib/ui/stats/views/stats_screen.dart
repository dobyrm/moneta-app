import 'package:flutter/material.dart';

import '../../../routing/routes.dart';
import '../../core/widgets/expense_card.dart';
import '../../core/widgets/stats_widget.dart';
import '../view_models/stats_view_model.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  final viewModel = StatsViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.load().then((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    if (viewModel.isLoading || viewModel.stats == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Moneta'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'categories':
                  Navigator.pushNamed(context, Routes.categories);
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'categories',
                child: Text('Categories'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.addExpense);
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            StatsWidget(stats: viewModel.stats!),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: viewModel.expenses.length,
                itemBuilder: (_, index) {
                  return ExpenseCard(
                    expense: viewModel.expenses[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
