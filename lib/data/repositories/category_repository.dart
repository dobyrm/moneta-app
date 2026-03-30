import '../../domain/models/category.dart';
import '../services/category_api_service.dart';

class CategoryRepository {
  final _service = CategoryApiService();

  Future<List<Category>> getAll() async {
    final response = await _service.getCategories();

    return response
        .map(
          (item) => Category(
            id: item.id,
            title: item.title,
          ),
        )
        .toList();
  }
}
