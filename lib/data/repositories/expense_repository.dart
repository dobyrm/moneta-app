import '../../domain/models/category.dart';
import '../../domain/models/expense.dart';
import '../services/expense_api_service.dart';

class ExpenseRepository {
  final _service = ExpenseApiService();

  Future<List<Expense>> getAll() async {
    final response = await _service.getExpenses();

    return response
        .map(
          (item) => Expense(
            id: item.id,
            title: item.title,
            amount: item.amount,
            category: Category(
              id: item.categoryId,
              title: _resolveCategory(item.categoryId),
            ),
            createdAt: DateTime.now(),
          ),
        )
        .toList();
  }

  String _resolveCategory(int categoryId) {
    switch (categoryId) {
      case 1:
        return 'Food';
      case 2:
        return 'Transport';
      default:
        return 'Other';
    }
  }
}
