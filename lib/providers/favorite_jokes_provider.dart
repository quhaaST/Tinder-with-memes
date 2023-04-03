import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoriteJokesProvider = Provider<List<String>>((ref) {
  return <String>["First joke", "Second joke"];
});