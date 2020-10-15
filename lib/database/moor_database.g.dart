// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MedicinesTableData extends DataClass
    implements Insertable<MedicinesTableData> {
  final int id;
  final String name;
  final String image;
  final String dose;
  MedicinesTableData(
      {@required this.id,
      @required this.name,
      @required this.image,
      @required this.dose});
  factory MedicinesTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MedicinesTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      image:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}image']),
      dose: stringType.mapFromDatabaseResponse(data['${effectivePrefix}dose']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || dose != null) {
      map['dose'] = Variable<String>(dose);
    }
    return map;
  }

  MedicinesTableCompanion toCompanion(bool nullToAbsent) {
    return MedicinesTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      dose: dose == null && nullToAbsent ? const Value.absent() : Value(dose),
    );
  }

  factory MedicinesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MedicinesTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      dose: serializer.fromJson<String>(json['dose']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'dose': serializer.toJson<String>(dose),
    };
  }

  MedicinesTableData copyWith(
          {int id, String name, String image, String dose}) =>
      MedicinesTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        dose: dose ?? this.dose,
      );
  @override
  String toString() {
    return (StringBuffer('MedicinesTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('dose: $dose')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode, $mrjc(name.hashCode, $mrjc(image.hashCode, dose.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MedicinesTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image &&
          other.dose == this.dose);
}

class MedicinesTableCompanion extends UpdateCompanion<MedicinesTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> image;
  final Value<String> dose;
  const MedicinesTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.dose = const Value.absent(),
  });
  MedicinesTableCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String image,
    @required String dose,
  })  : name = Value(name),
        image = Value(image),
        dose = Value(dose);
  static Insertable<MedicinesTableData> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> image,
    Expression<String> dose,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (dose != null) 'dose': dose,
    });
  }

  MedicinesTableCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> image,
      Value<String> dose}) {
    return MedicinesTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      dose: dose ?? this.dose,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (dose.present) {
      map['dose'] = Variable<String>(dose.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MedicinesTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('dose: $dose')
          ..write(')'))
        .toString();
  }
}

class $MedicinesTableTable extends MedicinesTable
    with TableInfo<$MedicinesTableTable, MedicinesTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MedicinesTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 5, maxTextLength: 50);
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedTextColumn _image;
  @override
  GeneratedTextColumn get image => _image ??= _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn(
      'image',
      $tableName,
      false,
    );
  }

  final VerificationMeta _doseMeta = const VerificationMeta('dose');
  GeneratedTextColumn _dose;
  @override
  GeneratedTextColumn get dose => _dose ??= _constructDose();
  GeneratedTextColumn _constructDose() {
    return GeneratedTextColumn(
      'dose',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, image, dose];
  @override
  $MedicinesTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'medicines_table';
  @override
  final String actualTableName = 'medicines_table';
  @override
  VerificationContext validateIntegrity(Insertable<MedicinesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image'], _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('dose')) {
      context.handle(
          _doseMeta, dose.isAcceptableOrUnknown(data['dose'], _doseMeta));
    } else if (isInserting) {
      context.missing(_doseMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MedicinesTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MedicinesTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MedicinesTableTable createAlias(String alias) {
    return $MedicinesTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MedicinesTableTable _medicinesTable;
  $MedicinesTableTable get medicinesTable =>
      _medicinesTable ??= $MedicinesTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [medicinesTable];
}
