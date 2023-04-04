// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_joke.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DummyJokeAdapter extends TypeAdapter<DummyJoke> {
  @override
  final int typeId = 1;

  @override
  DummyJoke read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DummyJoke(
      fields[0] as int,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DummyJoke obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DummyJokeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
