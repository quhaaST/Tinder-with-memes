import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/joke.dart';
import '../network/requests.dart';

final jokesProvider = Provider<Future<Joke>>((ref) {
  return fetchJoke();
});