// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.dart';

// ignore_for_file: type=lint
class $BGOCollectionTable extends BGOCollection
    with TableInfo<$BGOCollectionTable, BGOCollectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BGOCollectionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'b_g_o_collection';
  @override
  VerificationContext validateIntegrity(Insertable<BGOCollectionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BGOCollectionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BGOCollectionData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $BGOCollectionTable createAlias(String alias) {
    return $BGOCollectionTable(attachedDatabase, alias);
  }
}

class BGOCollectionData extends DataClass
    implements Insertable<BGOCollectionData> {
  final int id;
  final String name;
  final String description;
  const BGOCollectionData(
      {required this.id, required this.name, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    return map;
  }

  BGOCollectionCompanion toCompanion(bool nullToAbsent) {
    return BGOCollectionCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
    );
  }

  factory BGOCollectionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BGOCollectionData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
    };
  }

  BGOCollectionData copyWith({int? id, String? name, String? description}) =>
      BGOCollectionData(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
      );
  BGOCollectionData copyWithCompanion(BGOCollectionCompanion data) {
    return BGOCollectionData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BGOCollectionData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BGOCollectionData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description);
}

class BGOCollectionCompanion extends UpdateCompanion<BGOCollectionData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  const BGOCollectionCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
  });
  BGOCollectionCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String description,
  })  : name = Value(name),
        description = Value(description);
  static Insertable<BGOCollectionData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
    });
  }

  BGOCollectionCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<String>? description}) {
    return BGOCollectionCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
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
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BGOCollectionCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $BGOEntryTable extends BGOEntry
    with TableInfo<$BGOEntryTable, BGOEntryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BGOEntryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gameIdMeta = const VerificationMeta('gameId');
  @override
  late final GeneratedColumn<int> gameId = GeneratedColumn<int>(
      'game_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _minAgeMeta = const VerificationMeta('minAge');
  @override
  late final GeneratedColumn<int> minAge = GeneratedColumn<int>(
      'min_age', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _minPlayersMeta =
      const VerificationMeta('minPlayers');
  @override
  late final GeneratedColumn<int> minPlayers = GeneratedColumn<int>(
      'min_players', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _maxPlayersMeta =
      const VerificationMeta('maxPlayers');
  @override
  late final GeneratedColumn<int> maxPlayers = GeneratedColumn<int>(
      'max_players', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _minPlayTimeMeta =
      const VerificationMeta('minPlayTime');
  @override
  late final GeneratedColumn<int> minPlayTime = GeneratedColumn<int>(
      'min_play_time', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _maxPlayTimeMeta =
      const VerificationMeta('maxPlayTime');
  @override
  late final GeneratedColumn<int> maxPlayTime = GeneratedColumn<int>(
      'max_play_time', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _playingTimeMeta =
      const VerificationMeta('playingTime');
  @override
  late final GeneratedColumn<int> playingTime = GeneratedColumn<int>(
      'playing_time', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _thumbnailMeta =
      const VerificationMeta('thumbnail');
  @override
  late final GeneratedColumn<String> thumbnail = GeneratedColumn<String>(
      'thumbnail', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _yearPublishedMeta =
      const VerificationMeta('yearPublished');
  @override
  late final GeneratedColumn<int> yearPublished = GeneratedColumn<int>(
      'year_published', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _collectionMeta =
      const VerificationMeta('collection');
  @override
  late final GeneratedColumn<int> collection = GeneratedColumn<int>(
      'collection', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES b_g_o_collection (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        gameId,
        image,
        minAge,
        minPlayers,
        maxPlayers,
        minPlayTime,
        maxPlayTime,
        playingTime,
        thumbnail,
        yearPublished,
        collection
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'b_g_o_entry';
  @override
  VerificationContext validateIntegrity(Insertable<BGOEntryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('game_id')) {
      context.handle(_gameIdMeta,
          gameId.isAcceptableOrUnknown(data['game_id']!, _gameIdMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('min_age')) {
      context.handle(_minAgeMeta,
          minAge.isAcceptableOrUnknown(data['min_age']!, _minAgeMeta));
    }
    if (data.containsKey('min_players')) {
      context.handle(
          _minPlayersMeta,
          minPlayers.isAcceptableOrUnknown(
              data['min_players']!, _minPlayersMeta));
    }
    if (data.containsKey('max_players')) {
      context.handle(
          _maxPlayersMeta,
          maxPlayers.isAcceptableOrUnknown(
              data['max_players']!, _maxPlayersMeta));
    }
    if (data.containsKey('min_play_time')) {
      context.handle(
          _minPlayTimeMeta,
          minPlayTime.isAcceptableOrUnknown(
              data['min_play_time']!, _minPlayTimeMeta));
    }
    if (data.containsKey('max_play_time')) {
      context.handle(
          _maxPlayTimeMeta,
          maxPlayTime.isAcceptableOrUnknown(
              data['max_play_time']!, _maxPlayTimeMeta));
    }
    if (data.containsKey('playing_time')) {
      context.handle(
          _playingTimeMeta,
          playingTime.isAcceptableOrUnknown(
              data['playing_time']!, _playingTimeMeta));
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    }
    if (data.containsKey('year_published')) {
      context.handle(
          _yearPublishedMeta,
          yearPublished.isAcceptableOrUnknown(
              data['year_published']!, _yearPublishedMeta));
    }
    if (data.containsKey('collection')) {
      context.handle(
          _collectionMeta,
          collection.isAcceptableOrUnknown(
              data['collection']!, _collectionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BGOEntryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BGOEntryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      gameId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}game_id']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      minAge: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}min_age']),
      minPlayers: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}min_players']),
      maxPlayers: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_players']),
      minPlayTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}min_play_time']),
      maxPlayTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_play_time']),
      playingTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}playing_time']),
      thumbnail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumbnail']),
      yearPublished: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year_published']),
      collection: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}collection']),
    );
  }

  @override
  $BGOEntryTable createAlias(String alias) {
    return $BGOEntryTable(attachedDatabase, alias);
  }
}

class BGOEntryData extends DataClass implements Insertable<BGOEntryData> {
  final int id;
  final String? name;
  final String? description;
  final int? gameId;
  final String? image;
  final int? minAge;
  final int? minPlayers;
  final int? maxPlayers;
  final int? minPlayTime;
  final int? maxPlayTime;
  final int? playingTime;
  final String? thumbnail;
  final int? yearPublished;
  final int? collection;
  const BGOEntryData(
      {required this.id,
      this.name,
      this.description,
      this.gameId,
      this.image,
      this.minAge,
      this.minPlayers,
      this.maxPlayers,
      this.minPlayTime,
      this.maxPlayTime,
      this.playingTime,
      this.thumbnail,
      this.yearPublished,
      this.collection});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || gameId != null) {
      map['game_id'] = Variable<int>(gameId);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || minAge != null) {
      map['min_age'] = Variable<int>(minAge);
    }
    if (!nullToAbsent || minPlayers != null) {
      map['min_players'] = Variable<int>(minPlayers);
    }
    if (!nullToAbsent || maxPlayers != null) {
      map['max_players'] = Variable<int>(maxPlayers);
    }
    if (!nullToAbsent || minPlayTime != null) {
      map['min_play_time'] = Variable<int>(minPlayTime);
    }
    if (!nullToAbsent || maxPlayTime != null) {
      map['max_play_time'] = Variable<int>(maxPlayTime);
    }
    if (!nullToAbsent || playingTime != null) {
      map['playing_time'] = Variable<int>(playingTime);
    }
    if (!nullToAbsent || thumbnail != null) {
      map['thumbnail'] = Variable<String>(thumbnail);
    }
    if (!nullToAbsent || yearPublished != null) {
      map['year_published'] = Variable<int>(yearPublished);
    }
    if (!nullToAbsent || collection != null) {
      map['collection'] = Variable<int>(collection);
    }
    return map;
  }

  BGOEntryCompanion toCompanion(bool nullToAbsent) {
    return BGOEntryCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      gameId:
          gameId == null && nullToAbsent ? const Value.absent() : Value(gameId),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      minAge:
          minAge == null && nullToAbsent ? const Value.absent() : Value(minAge),
      minPlayers: minPlayers == null && nullToAbsent
          ? const Value.absent()
          : Value(minPlayers),
      maxPlayers: maxPlayers == null && nullToAbsent
          ? const Value.absent()
          : Value(maxPlayers),
      minPlayTime: minPlayTime == null && nullToAbsent
          ? const Value.absent()
          : Value(minPlayTime),
      maxPlayTime: maxPlayTime == null && nullToAbsent
          ? const Value.absent()
          : Value(maxPlayTime),
      playingTime: playingTime == null && nullToAbsent
          ? const Value.absent()
          : Value(playingTime),
      thumbnail: thumbnail == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnail),
      yearPublished: yearPublished == null && nullToAbsent
          ? const Value.absent()
          : Value(yearPublished),
      collection: collection == null && nullToAbsent
          ? const Value.absent()
          : Value(collection),
    );
  }

  factory BGOEntryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BGOEntryData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      gameId: serializer.fromJson<int?>(json['gameId']),
      image: serializer.fromJson<String?>(json['image']),
      minAge: serializer.fromJson<int?>(json['minAge']),
      minPlayers: serializer.fromJson<int?>(json['minPlayers']),
      maxPlayers: serializer.fromJson<int?>(json['maxPlayers']),
      minPlayTime: serializer.fromJson<int?>(json['minPlayTime']),
      maxPlayTime: serializer.fromJson<int?>(json['maxPlayTime']),
      playingTime: serializer.fromJson<int?>(json['playingTime']),
      thumbnail: serializer.fromJson<String?>(json['thumbnail']),
      yearPublished: serializer.fromJson<int?>(json['yearPublished']),
      collection: serializer.fromJson<int?>(json['collection']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'description': serializer.toJson<String?>(description),
      'gameId': serializer.toJson<int?>(gameId),
      'image': serializer.toJson<String?>(image),
      'minAge': serializer.toJson<int?>(minAge),
      'minPlayers': serializer.toJson<int?>(minPlayers),
      'maxPlayers': serializer.toJson<int?>(maxPlayers),
      'minPlayTime': serializer.toJson<int?>(minPlayTime),
      'maxPlayTime': serializer.toJson<int?>(maxPlayTime),
      'playingTime': serializer.toJson<int?>(playingTime),
      'thumbnail': serializer.toJson<String?>(thumbnail),
      'yearPublished': serializer.toJson<int?>(yearPublished),
      'collection': serializer.toJson<int?>(collection),
    };
  }

  BGOEntryData copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<int?> gameId = const Value.absent(),
          Value<String?> image = const Value.absent(),
          Value<int?> minAge = const Value.absent(),
          Value<int?> minPlayers = const Value.absent(),
          Value<int?> maxPlayers = const Value.absent(),
          Value<int?> minPlayTime = const Value.absent(),
          Value<int?> maxPlayTime = const Value.absent(),
          Value<int?> playingTime = const Value.absent(),
          Value<String?> thumbnail = const Value.absent(),
          Value<int?> yearPublished = const Value.absent(),
          Value<int?> collection = const Value.absent()}) =>
      BGOEntryData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        description: description.present ? description.value : this.description,
        gameId: gameId.present ? gameId.value : this.gameId,
        image: image.present ? image.value : this.image,
        minAge: minAge.present ? minAge.value : this.minAge,
        minPlayers: minPlayers.present ? minPlayers.value : this.minPlayers,
        maxPlayers: maxPlayers.present ? maxPlayers.value : this.maxPlayers,
        minPlayTime: minPlayTime.present ? minPlayTime.value : this.minPlayTime,
        maxPlayTime: maxPlayTime.present ? maxPlayTime.value : this.maxPlayTime,
        playingTime: playingTime.present ? playingTime.value : this.playingTime,
        thumbnail: thumbnail.present ? thumbnail.value : this.thumbnail,
        yearPublished:
            yearPublished.present ? yearPublished.value : this.yearPublished,
        collection: collection.present ? collection.value : this.collection,
      );
  BGOEntryData copyWithCompanion(BGOEntryCompanion data) {
    return BGOEntryData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      gameId: data.gameId.present ? data.gameId.value : this.gameId,
      image: data.image.present ? data.image.value : this.image,
      minAge: data.minAge.present ? data.minAge.value : this.minAge,
      minPlayers:
          data.minPlayers.present ? data.minPlayers.value : this.minPlayers,
      maxPlayers:
          data.maxPlayers.present ? data.maxPlayers.value : this.maxPlayers,
      minPlayTime:
          data.minPlayTime.present ? data.minPlayTime.value : this.minPlayTime,
      maxPlayTime:
          data.maxPlayTime.present ? data.maxPlayTime.value : this.maxPlayTime,
      playingTime:
          data.playingTime.present ? data.playingTime.value : this.playingTime,
      thumbnail: data.thumbnail.present ? data.thumbnail.value : this.thumbnail,
      yearPublished: data.yearPublished.present
          ? data.yearPublished.value
          : this.yearPublished,
      collection:
          data.collection.present ? data.collection.value : this.collection,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BGOEntryData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('gameId: $gameId, ')
          ..write('image: $image, ')
          ..write('minAge: $minAge, ')
          ..write('minPlayers: $minPlayers, ')
          ..write('maxPlayers: $maxPlayers, ')
          ..write('minPlayTime: $minPlayTime, ')
          ..write('maxPlayTime: $maxPlayTime, ')
          ..write('playingTime: $playingTime, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('yearPublished: $yearPublished, ')
          ..write('collection: $collection')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      description,
      gameId,
      image,
      minAge,
      minPlayers,
      maxPlayers,
      minPlayTime,
      maxPlayTime,
      playingTime,
      thumbnail,
      yearPublished,
      collection);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BGOEntryData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.gameId == this.gameId &&
          other.image == this.image &&
          other.minAge == this.minAge &&
          other.minPlayers == this.minPlayers &&
          other.maxPlayers == this.maxPlayers &&
          other.minPlayTime == this.minPlayTime &&
          other.maxPlayTime == this.maxPlayTime &&
          other.playingTime == this.playingTime &&
          other.thumbnail == this.thumbnail &&
          other.yearPublished == this.yearPublished &&
          other.collection == this.collection);
}

class BGOEntryCompanion extends UpdateCompanion<BGOEntryData> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> description;
  final Value<int?> gameId;
  final Value<String?> image;
  final Value<int?> minAge;
  final Value<int?> minPlayers;
  final Value<int?> maxPlayers;
  final Value<int?> minPlayTime;
  final Value<int?> maxPlayTime;
  final Value<int?> playingTime;
  final Value<String?> thumbnail;
  final Value<int?> yearPublished;
  final Value<int?> collection;
  const BGOEntryCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.gameId = const Value.absent(),
    this.image = const Value.absent(),
    this.minAge = const Value.absent(),
    this.minPlayers = const Value.absent(),
    this.maxPlayers = const Value.absent(),
    this.minPlayTime = const Value.absent(),
    this.maxPlayTime = const Value.absent(),
    this.playingTime = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.yearPublished = const Value.absent(),
    this.collection = const Value.absent(),
  });
  BGOEntryCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.gameId = const Value.absent(),
    this.image = const Value.absent(),
    this.minAge = const Value.absent(),
    this.minPlayers = const Value.absent(),
    this.maxPlayers = const Value.absent(),
    this.minPlayTime = const Value.absent(),
    this.maxPlayTime = const Value.absent(),
    this.playingTime = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.yearPublished = const Value.absent(),
    this.collection = const Value.absent(),
  });
  static Insertable<BGOEntryData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? gameId,
    Expression<String>? image,
    Expression<int>? minAge,
    Expression<int>? minPlayers,
    Expression<int>? maxPlayers,
    Expression<int>? minPlayTime,
    Expression<int>? maxPlayTime,
    Expression<int>? playingTime,
    Expression<String>? thumbnail,
    Expression<int>? yearPublished,
    Expression<int>? collection,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (gameId != null) 'game_id': gameId,
      if (image != null) 'image': image,
      if (minAge != null) 'min_age': minAge,
      if (minPlayers != null) 'min_players': minPlayers,
      if (maxPlayers != null) 'max_players': maxPlayers,
      if (minPlayTime != null) 'min_play_time': minPlayTime,
      if (maxPlayTime != null) 'max_play_time': maxPlayTime,
      if (playingTime != null) 'playing_time': playingTime,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (yearPublished != null) 'year_published': yearPublished,
      if (collection != null) 'collection': collection,
    });
  }

  BGOEntryCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? description,
      Value<int?>? gameId,
      Value<String?>? image,
      Value<int?>? minAge,
      Value<int?>? minPlayers,
      Value<int?>? maxPlayers,
      Value<int?>? minPlayTime,
      Value<int?>? maxPlayTime,
      Value<int?>? playingTime,
      Value<String?>? thumbnail,
      Value<int?>? yearPublished,
      Value<int?>? collection}) {
    return BGOEntryCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      gameId: gameId ?? this.gameId,
      image: image ?? this.image,
      minAge: minAge ?? this.minAge,
      minPlayers: minPlayers ?? this.minPlayers,
      maxPlayers: maxPlayers ?? this.maxPlayers,
      minPlayTime: minPlayTime ?? this.minPlayTime,
      maxPlayTime: maxPlayTime ?? this.maxPlayTime,
      playingTime: playingTime ?? this.playingTime,
      thumbnail: thumbnail ?? this.thumbnail,
      yearPublished: yearPublished ?? this.yearPublished,
      collection: collection ?? this.collection,
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
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (gameId.present) {
      map['game_id'] = Variable<int>(gameId.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (minAge.present) {
      map['min_age'] = Variable<int>(minAge.value);
    }
    if (minPlayers.present) {
      map['min_players'] = Variable<int>(minPlayers.value);
    }
    if (maxPlayers.present) {
      map['max_players'] = Variable<int>(maxPlayers.value);
    }
    if (minPlayTime.present) {
      map['min_play_time'] = Variable<int>(minPlayTime.value);
    }
    if (maxPlayTime.present) {
      map['max_play_time'] = Variable<int>(maxPlayTime.value);
    }
    if (playingTime.present) {
      map['playing_time'] = Variable<int>(playingTime.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (yearPublished.present) {
      map['year_published'] = Variable<int>(yearPublished.value);
    }
    if (collection.present) {
      map['collection'] = Variable<int>(collection.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BGOEntryCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('gameId: $gameId, ')
          ..write('image: $image, ')
          ..write('minAge: $minAge, ')
          ..write('minPlayers: $minPlayers, ')
          ..write('maxPlayers: $maxPlayers, ')
          ..write('minPlayTime: $minPlayTime, ')
          ..write('maxPlayTime: $maxPlayTime, ')
          ..write('playingTime: $playingTime, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('yearPublished: $yearPublished, ')
          ..write('collection: $collection')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BGOCollectionTable bGOCollection = $BGOCollectionTable(this);
  late final $BGOEntryTable bGOEntry = $BGOEntryTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [bGOCollection, bGOEntry];
}

typedef $$BGOCollectionTableCreateCompanionBuilder = BGOCollectionCompanion
    Function({
  Value<int> id,
  required String name,
  required String description,
});
typedef $$BGOCollectionTableUpdateCompanionBuilder = BGOCollectionCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> description,
});

class $$BGOCollectionTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BGOCollectionTable,
    BGOCollectionData,
    $$BGOCollectionTableFilterComposer,
    $$BGOCollectionTableOrderingComposer,
    $$BGOCollectionTableCreateCompanionBuilder,
    $$BGOCollectionTableUpdateCompanionBuilder> {
  $$BGOCollectionTableTableManager(_$AppDatabase db, $BGOCollectionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BGOCollectionTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BGOCollectionTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> description = const Value.absent(),
          }) =>
              BGOCollectionCompanion(
            id: id,
            name: name,
            description: description,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String description,
          }) =>
              BGOCollectionCompanion.insert(
            id: id,
            name: name,
            description: description,
          ),
        ));
}

class $$BGOCollectionTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BGOCollectionTable> {
  $$BGOCollectionTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter bGOEntryRefs(
      ComposableFilter Function($$BGOEntryTableFilterComposer f) f) {
    final $$BGOEntryTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.bGOEntry,
        getReferencedColumn: (t) => t.collection,
        builder: (joinBuilder, parentComposers) =>
            $$BGOEntryTableFilterComposer(ComposerState(
                $state.db, $state.db.bGOEntry, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$BGOCollectionTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BGOCollectionTable> {
  $$BGOCollectionTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$BGOEntryTableCreateCompanionBuilder = BGOEntryCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> description,
  Value<int?> gameId,
  Value<String?> image,
  Value<int?> minAge,
  Value<int?> minPlayers,
  Value<int?> maxPlayers,
  Value<int?> minPlayTime,
  Value<int?> maxPlayTime,
  Value<int?> playingTime,
  Value<String?> thumbnail,
  Value<int?> yearPublished,
  Value<int?> collection,
});
typedef $$BGOEntryTableUpdateCompanionBuilder = BGOEntryCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> description,
  Value<int?> gameId,
  Value<String?> image,
  Value<int?> minAge,
  Value<int?> minPlayers,
  Value<int?> maxPlayers,
  Value<int?> minPlayTime,
  Value<int?> maxPlayTime,
  Value<int?> playingTime,
  Value<String?> thumbnail,
  Value<int?> yearPublished,
  Value<int?> collection,
});

class $$BGOEntryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BGOEntryTable,
    BGOEntryData,
    $$BGOEntryTableFilterComposer,
    $$BGOEntryTableOrderingComposer,
    $$BGOEntryTableCreateCompanionBuilder,
    $$BGOEntryTableUpdateCompanionBuilder> {
  $$BGOEntryTableTableManager(_$AppDatabase db, $BGOEntryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BGOEntryTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BGOEntryTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int?> gameId = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<int?> minAge = const Value.absent(),
            Value<int?> minPlayers = const Value.absent(),
            Value<int?> maxPlayers = const Value.absent(),
            Value<int?> minPlayTime = const Value.absent(),
            Value<int?> maxPlayTime = const Value.absent(),
            Value<int?> playingTime = const Value.absent(),
            Value<String?> thumbnail = const Value.absent(),
            Value<int?> yearPublished = const Value.absent(),
            Value<int?> collection = const Value.absent(),
          }) =>
              BGOEntryCompanion(
            id: id,
            name: name,
            description: description,
            gameId: gameId,
            image: image,
            minAge: minAge,
            minPlayers: minPlayers,
            maxPlayers: maxPlayers,
            minPlayTime: minPlayTime,
            maxPlayTime: maxPlayTime,
            playingTime: playingTime,
            thumbnail: thumbnail,
            yearPublished: yearPublished,
            collection: collection,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int?> gameId = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<int?> minAge = const Value.absent(),
            Value<int?> minPlayers = const Value.absent(),
            Value<int?> maxPlayers = const Value.absent(),
            Value<int?> minPlayTime = const Value.absent(),
            Value<int?> maxPlayTime = const Value.absent(),
            Value<int?> playingTime = const Value.absent(),
            Value<String?> thumbnail = const Value.absent(),
            Value<int?> yearPublished = const Value.absent(),
            Value<int?> collection = const Value.absent(),
          }) =>
              BGOEntryCompanion.insert(
            id: id,
            name: name,
            description: description,
            gameId: gameId,
            image: image,
            minAge: minAge,
            minPlayers: minPlayers,
            maxPlayers: maxPlayers,
            minPlayTime: minPlayTime,
            maxPlayTime: maxPlayTime,
            playingTime: playingTime,
            thumbnail: thumbnail,
            yearPublished: yearPublished,
            collection: collection,
          ),
        ));
}

class $$BGOEntryTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BGOEntryTable> {
  $$BGOEntryTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get gameId => $state.composableBuilder(
      column: $state.table.gameId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get minAge => $state.composableBuilder(
      column: $state.table.minAge,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get minPlayers => $state.composableBuilder(
      column: $state.table.minPlayers,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get maxPlayers => $state.composableBuilder(
      column: $state.table.maxPlayers,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get minPlayTime => $state.composableBuilder(
      column: $state.table.minPlayTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get maxPlayTime => $state.composableBuilder(
      column: $state.table.maxPlayTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get playingTime => $state.composableBuilder(
      column: $state.table.playingTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get thumbnail => $state.composableBuilder(
      column: $state.table.thumbnail,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get yearPublished => $state.composableBuilder(
      column: $state.table.yearPublished,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$BGOCollectionTableFilterComposer get collection {
    final $$BGOCollectionTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.collection,
        referencedTable: $state.db.bGOCollection,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BGOCollectionTableFilterComposer(ComposerState($state.db,
                $state.db.bGOCollection, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$BGOEntryTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BGOEntryTable> {
  $$BGOEntryTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get gameId => $state.composableBuilder(
      column: $state.table.gameId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get minAge => $state.composableBuilder(
      column: $state.table.minAge,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get minPlayers => $state.composableBuilder(
      column: $state.table.minPlayers,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get maxPlayers => $state.composableBuilder(
      column: $state.table.maxPlayers,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get minPlayTime => $state.composableBuilder(
      column: $state.table.minPlayTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get maxPlayTime => $state.composableBuilder(
      column: $state.table.maxPlayTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get playingTime => $state.composableBuilder(
      column: $state.table.playingTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get thumbnail => $state.composableBuilder(
      column: $state.table.thumbnail,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get yearPublished => $state.composableBuilder(
      column: $state.table.yearPublished,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$BGOCollectionTableOrderingComposer get collection {
    final $$BGOCollectionTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.collection,
            referencedTable: $state.db.bGOCollection,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$BGOCollectionTableOrderingComposer(ComposerState($state.db,
                    $state.db.bGOCollection, joinBuilder, parentComposers)));
    return composer;
  }
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BGOCollectionTableTableManager get bGOCollection =>
      $$BGOCollectionTableTableManager(_db, _db.bGOCollection);
  $$BGOEntryTableTableManager get bGOEntry =>
      $$BGOEntryTableTableManager(_db, _db.bGOEntry);
}
