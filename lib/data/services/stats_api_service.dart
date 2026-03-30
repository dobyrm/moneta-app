import '../models/stats_api_model.dart';

class StatsApiService {
  Future<StatsApiModel> getStats() async {
    await Future.delayed(const Duration(milliseconds: 300));

    return const StatsApiModel(
      total: 500,
      transactions: 2,
    );
  }
}
