import '../models/expense_api_model.dart';

class ExpenseApiService {
  Future<List<ExpenseApiModel>> getExpenses() async {
    await Future.delayed(const Duration(milliseconds: 300));

    return const [
      ExpenseApiModel(
        id: 1,
        title: 'Pizza',
        amount: 320,
        categoryId: 1,
      ),
      ExpenseApiModel(
        id: 2,
        title: 'Taxi',
        amount: 180,
        categoryId: 2,
      ),
    ];
  }
}
