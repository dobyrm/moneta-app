import 'package:flutter/material.dart';

import '../../../data/repositories/expense_repository.dart';
import '../../../data/repositories/stats_repository.dart';
import '../../../domain/models/expense.dart';
import '../../../domain/models/stats.dart';

class StatsViewModel extends ChangeNotifier {
  final _statsRepository = StatsRepository();
  final _expenseRepository = ExpenseRepository();

  Stats? stats;
  List<Expense> expenses = [];

  bool isLoading = false;

  Future<void> load() async {
    isLoading = true;
    notifyListeners();

    stats = await _statsRepository.get();
    expenses = await _expenseRepository.getAll();

    isLoading = false;
    notifyListeners();
  }
}
