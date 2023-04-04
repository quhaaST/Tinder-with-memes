import 'package:first_app/models/dummy_joke.dart';
import 'package:first_app/models/joke.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabase {
  static const String boxName = 'favorites';

  bool isInitialized = false;

  Future<void> databaseInit() async {
    await Hive.initFlutter();
    Hive.registerAdapter(DummyJokeAdapter());
    isInitialized = true;

    await initBox();
  }

  Future<Box<DummyJoke>> initBox() async {
    if (!isInitialized) {
      await databaseInit();
    }

    Box<DummyJoke>? box;

    if (!Hive.isBoxOpen(boxName)) {
      box = await Hive.openBox<DummyJoke>(boxName);
    } else {
      box = Hive.box<DummyJoke>(boxName);
    }

    return box;
  }

  void addJoke(Joke joke) async {
    if (!isInitialized) {
      await databaseInit();
    }

    Box<DummyJoke> box = await initBox();

    var currentValues = box.values.toList();

    var id = box.length + 1;
    var dummyJokeBody = DummyJoke(id, joke.value);

    // add only new jokes to the database
    if (!currentValues.any((element) => element.text == joke.value)) {
      box.add(dummyJokeBody);
    }
  }

  Future<List<DummyJoke>> readAll() async {
    if (!isInitialized) {
      await databaseInit();
    }

    Box<DummyJoke> box = await initBox();
    var data = box.values.toList();

    return data;
  }

  void clear() async {
    if (!isInitialized) {
      await databaseInit();
    }

    Box<DummyJoke> box = await initBox();
    await box.clear();
  }
}
