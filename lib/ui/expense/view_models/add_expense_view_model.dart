import 'package:flutter/material.dart';

class AddExpenseViewModel extends ChangeNotifier {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void save() {
    debugPrint('Expense saved');
  }

  @override
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }
}
