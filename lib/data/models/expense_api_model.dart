class ExpenseApiModel {
  final int id;
  final String title;
  final double amount;
  final int categoryId;

  const ExpenseApiModel({
    required this.id,
    required this.title,
    required this.amount,
    required this.categoryId,
  });
}
