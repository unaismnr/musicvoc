// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SongsModelAdapter extends TypeAdapter<SongsModel> {
  @override
  final int typeId = 4;

  @override
  SongsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SongsModel(
      title: fields[0] as String,
      artist: fields[1] as String,
      songUri: fields[2] as String,
      id: fields[3] as int,
      time: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, SongsModel obj) {
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
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SongsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
