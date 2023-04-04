import 'package:first_app/models/dummy_joke.dart';
import 'package:first_app/storage/hive_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoriteJokesProvider = Provider<Future<List<DummyJoke>>>((ref) {
  return HiveProvider().getInstance().readAll();
});
