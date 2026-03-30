import '../models/category_api_model.dart';

class CategoryApiService {
  Future<List<CategoryApiModel>> getCategories() async {
    await Future.delayed(const Duration(milliseconds: 300));

    return const [
      CategoryApiModel(id: 1, title: 'Food'),
      CategoryApiModel(id: 2, title: 'Transport'),
      CategoryApiModel(id: 3, title: 'Shopping'),
    ];
  }
}
