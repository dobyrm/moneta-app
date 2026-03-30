import 'package:flutter/material.dart';

import '../../../domain/models/expense.dart';

class ExpenseCard extends StatelessWidget {
  final Expense expense;

  const ExpenseCard({
    super.key,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(expense.title),
        subtitle: Text(expense.category.title),
        trailing: Text('\$${expense.amount}'),
      ),
    );
  }
}
