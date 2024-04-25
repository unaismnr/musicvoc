// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mostly_played_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MostlyPlayedModelAdapter extends TypeAdapter<MostlyPlayedModel> {
  @override
  final int typeId = 1;

  @override
  MostlyPlayedModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MostlyPlayedModel(
      title: fields[0] as String,
      artist: fields[1] as String,
      songUri: fields[2] as String,
      id: fields[3] as int,
      playCount: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MostlyPlayedModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.artist)
      ..writeByte(2)
      ..write(obj.songUri)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.playCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MostlyPlayedModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
