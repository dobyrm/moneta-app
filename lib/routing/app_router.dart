import 'package:flutter/material.dart';

import '../ui/category/views/category_screen.dart';
import '../ui/expense/views/add_expense_screen.dart';
import '../ui/stats/views/stats_screen.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.addExpense:
        return MaterialPageRoute(
          builder: (_) => const AddExpenseScreen(),
        );

      case Routes.categories:
        return MaterialPageRoute(
          builder: (_) => const CategoryScreen(),
        );

      case Routes.stats:
      default:
        return MaterialPageRoute(
          builder: (_) => const StatsScreen(),
        );
    }
  }
}
