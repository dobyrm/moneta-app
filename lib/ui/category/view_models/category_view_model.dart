import 'package:flutter/material.dart';

import '../../../data/repositories/category_repository.dart';
import '../../../domain/models/category.dart';

class CategoryViewModel extends ChangeNotifier {
  final _repository = CategoryRepository();

  final titleController = TextEditingController();

  List<Category> categories = [];

  bool isLoading = false;

  Future<void> load() async {
    isLoading = true;
    notifyListeners();

    categories = await _repository.getAll();

    isLoading = false;
    notifyListeners();
  }

  void add() {
    categories.add(
      Category(
        id: DateTime.now().millisecondsSinceEpoch,
        title: titleController.text,
      ),
    );

    titleController.clear();

    notifyListeners();

    debugPrint('Category added');
  }

  void update(Category category) {
    final index = categories.indexOf(category);

    categories[index] = Category(
      id: category.id,
      title: titleController.text,
    );

    titleController.clear();

    notifyListeners();

    debugPrint('Category updated');
  }

  void remove(Category category) {
    categories.remove(category);

    notifyListeners();

    debugPrint('Category removed');
  }

  @override
  void dispose() {
    titleController.dispose();

    super.dispose();
  }
}
