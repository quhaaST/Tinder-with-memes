import 'package:hive/hive.dart';

part 'dummy_joke.g.dart';

@HiveType(typeId: 1)
class DummyJoke {
  @HiveField(0)
  int id;

  @HiveField(1)
  String text;

  DummyJoke(this.id, this.text);
}
