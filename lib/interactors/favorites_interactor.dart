import '../models/joke.dart';
import '../storage/hive_provider.dart';

class FavoritesInteractor {
  void addJoke(Future<Joke> joke) async {
    var jokeBody = await joke;
    HiveProvider().getInstance().addJoke(jokeBody);
  }

  void clearData() {
    HiveProvider().getInstance().clear();
  }
}
