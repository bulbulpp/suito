// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionHiveModelAdapter extends TypeAdapter<TransactionHiveModel> {
  @override
  final typeId = 1;

  @override
  TransactionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionHiveModel(
      id: fields[0] as String,
      typeKey: fields[1] as String,
      currencyCode: fields[2] as String,
      amountMinorUnit: (fields[3] as num).toInt(),
      categoryId: fields[4] as String,
      occurredAtUtc: fields[5] as DateTime,
      paymentMethodKey: fields[6] as String,
      createdAtUtc: fields[7] as DateTime,
      updatedAtUtc: fields[8] as DateTime,
      memo: fields[9] as String?,
      bitcoinSnapshot: fields[10] as BitcoinSnapshotHiveModel?,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionHiveModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.typeKey)
      ..writeByte(2)
      ..write(obj.currencyCode)
      ..writeByte(3)
      ..write(obj.amountMinorUnit)
      ..writeByte(4)
      ..write(obj.categoryId)
      ..writeByte(5)
      ..write(obj.occurredAtUtc)
      ..writeByte(6)
      ..write(obj.paymentMethodKey)
      ..writeByte(7)
      ..write(obj.createdAtUtc)
      ..writeByte(8)
      ..write(obj.updatedAtUtc)
      ..writeByte(9)
      ..write(obj.memo)
      ..writeByte(10)
      ..write(obj.bitcoinSnapshot);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BitcoinSnapshotHiveModelAdapter
    extends TypeAdapter<BitcoinSnapshotHiveModel> {
  @override
  final typeId = 5;

  @override
  BitcoinSnapshotHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BitcoinSnapshotHiveModel(
      satAmount: (fields[0] as num).toInt(),
      jpyAtRecordTime: (fields[1] as num).toInt(),
      usdCentsAtRecordTime: (fields[2] as num).toInt(),
      btcJpyRate: (fields[3] as num).toInt(),
      btcUsdCentRate: (fields[4] as num).toInt(),
      recordedAtUtc: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, BitcoinSnapshotHiveModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.satAmount)
      ..writeByte(1)
      ..write(obj.jpyAtRecordTime)
      ..writeByte(2)
      ..write(obj.usdCentsAtRecordTime)
      ..writeByte(3)
      ..write(obj.btcJpyRate)
      ..writeByte(4)
      ..write(obj.btcUsdCentRate)
      ..writeByte(5)
      ..write(obj.recordedAtUtc);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BitcoinSnapshotHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
