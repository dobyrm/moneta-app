import '../../domain/models/stats.dart';
import '../services/stats_api_service.dart';

class StatsRepository {
  final _service = StatsApiService();

  Future<Stats> get() async {
    final response = await _service.getStats();

    return Stats(
      total: response.total,
      transactions: response.transactions,
    );
  }
}
