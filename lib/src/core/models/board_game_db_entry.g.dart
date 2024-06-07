// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_game_db_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBoardGameDbEntryCollection on Isar {
  IsarCollection<BoardGameDbEntry> get boardGameDbEntrys => this.collection();
}

const BoardGameDbEntrySchema = CollectionSchema(
  name: r'BoardGameDbEntry',
  id: 6591119650137902159,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'gameId': PropertySchema(
      id: 1,
      name: r'gameId',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 2,
      name: r'image',
      type: IsarType.string,
    ),
    r'maxPlayTime': PropertySchema(
      id: 3,
      name: r'maxPlayTime',
      type: IsarType.long,
    ),
    r'maxPlayers': PropertySchema(
      id: 4,
      name: r'maxPlayers',
      type: IsarType.long,
    ),
    r'minAge': PropertySchema(
      id: 5,
      name: r'minAge',
      type: IsarType.long,
    ),
    r'minPlayTime': PropertySchema(
      id: 6,
      name: r'minPlayTime',
      type: IsarType.long,
    ),
    r'minPlayers': PropertySchema(
      id: 7,
      name: r'minPlayers',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'names': PropertySchema(
      id: 9,
      name: r'names',
      type: IsarType.stringList,
    ),
    r'playingTime': PropertySchema(
      id: 10,
      name: r'playingTime',
      type: IsarType.long,
    ),
    r'thumbnail': PropertySchema(
      id: 11,
      name: r'thumbnail',
      type: IsarType.string,
    ),
    r'yearPublished': PropertySchema(
      id: 12,
      name: r'yearPublished',
      type: IsarType.long,
    )
  },
  estimateSize: _boardGameDbEntryEstimateSize,
  serialize: _boardGameDbEntrySerialize,
  deserialize: _boardGameDbEntryDeserialize,
  deserializeProp: _boardGameDbEntryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _boardGameDbEntryGetId,
  getLinks: _boardGameDbEntryGetLinks,
  attach: _boardGameDbEntryAttach,
  version: '3.1.0',
);

int _boardGameDbEntryEstimateSize(
  BoardGameDbEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.names.length * 3;
  {
    for (var i = 0; i < object.names.length; i++) {
      final value = object.names[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.thumbnail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _boardGameDbEntrySerialize(
  BoardGameDbEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeLong(offsets[1], object.gameId);
  writer.writeString(offsets[2], object.image);
  writer.writeLong(offsets[3], object.maxPlayTime);
  writer.writeLong(offsets[4], object.maxPlayers);
  writer.writeLong(offsets[5], object.minAge);
  writer.writeLong(offsets[6], object.minPlayTime);
  writer.writeLong(offsets[7], object.minPlayers);
  writer.writeString(offsets[8], object.name);
  writer.writeStringList(offsets[9], object.names);
  writer.writeLong(offsets[10], object.playingTime);
  writer.writeString(offsets[11], object.thumbnail);
  writer.writeLong(offsets[12], object.yearPublished);
}

BoardGameDbEntry _boardGameDbEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BoardGameDbEntry(
    description: reader.readStringOrNull(offsets[0]),
    gameId: reader.readLongOrNull(offsets[1]),
    image: reader.readStringOrNull(offsets[2]),
    maxPlayTime: reader.readLongOrNull(offsets[3]),
    maxPlayers: reader.readLongOrNull(offsets[4]),
    minAge: reader.readLongOrNull(offsets[5]),
    minPlayTime: reader.readLongOrNull(offsets[6]),
    minPlayers: reader.readLongOrNull(offsets[7]),
    name: reader.readStringOrNull(offsets[8]),
    names: reader.readStringList(offsets[9]) ?? [],
    playingTime: reader.readLongOrNull(offsets[10]),
    thumbnail: reader.readStringOrNull(offsets[11]),
    yearPublished: reader.readLongOrNull(offsets[12]),
  );
  object.id = id;
  return object;
}

P _boardGameDbEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _boardGameDbEntryGetId(BoardGameDbEntry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _boardGameDbEntryGetLinks(BoardGameDbEntry object) {
  return [];
}

void _boardGameDbEntryAttach(
    IsarCollection<dynamic> col, Id id, BoardGameDbEntry object) {
  object.id = id;
}

extension BoardGameDbEntryQueryWhereSort
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QWhere> {
  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BoardGameDbEntryQueryWhere
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QWhereClause> {
  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BoardGameDbEntryQueryFilter
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QFilterCondition> {
  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      gameIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gameId',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      gameIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gameId',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      gameIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameId',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      gameIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gameId',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      gameIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gameId',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      gameIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gameId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxPlayTime',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxPlayTime',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxPlayTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxPlayTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxPlayTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxPlayTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxPlayers',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxPlayers',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayersEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxPlayers',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayersGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxPlayers',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayersLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxPlayers',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      maxPlayersBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxPlayers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minAgeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minAge',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minAgeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minAge',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minAgeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minAge',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minAgeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minAge',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minAgeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minAge',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minAgeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minAge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minPlayTime',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minPlayTime',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minPlayTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minPlayTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minPlayTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minPlayTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'minPlayers',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'minPlayers',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayersEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minPlayers',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayersGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minPlayers',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayersLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minPlayers',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      minPlayersBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minPlayers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'names',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'names',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'names',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'names',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'names',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'names',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'names',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'names',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'names',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'names',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'names',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'names',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'names',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'names',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'names',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      namesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'names',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      playingTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'playingTime',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      playingTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'playingTime',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      playingTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playingTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      playingTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playingTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      playingTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playingTime',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      playingTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playingTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnail',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnail',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      thumbnailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnail',
        value: '',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      yearPublishedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'yearPublished',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      yearPublishedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'yearPublished',
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      yearPublishedEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yearPublished',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      yearPublishedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'yearPublished',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      yearPublishedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'yearPublished',
        value: value,
      ));
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterFilterCondition>
      yearPublishedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'yearPublished',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BoardGameDbEntryQueryObject
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QFilterCondition> {}

extension BoardGameDbEntryQueryLinks
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QFilterCondition> {}

extension BoardGameDbEntryQuerySortBy
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QSortBy> {
  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByGameId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameId', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByGameIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameId', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMaxPlayTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayTime', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMaxPlayTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayTime', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMaxPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayers', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMaxPlayersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayers', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMinAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAge', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMinAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAge', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMinPlayTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayTime', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMinPlayTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayTime', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMinPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayers', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByMinPlayersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayers', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByPlayingTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playingTime', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByPlayingTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playingTime', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByThumbnail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByThumbnailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByYearPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearPublished', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      sortByYearPublishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearPublished', Sort.desc);
    });
  }
}

extension BoardGameDbEntryQuerySortThenBy
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QSortThenBy> {
  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByGameId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameId', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByGameIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gameId', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMaxPlayTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayTime', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMaxPlayTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayTime', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMaxPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayers', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMaxPlayersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxPlayers', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMinAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAge', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMinAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minAge', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMinPlayTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayTime', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMinPlayTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayTime', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMinPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayers', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByMinPlayersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minPlayers', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByPlayingTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playingTime', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByPlayingTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playingTime', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByThumbnail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByThumbnailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnail', Sort.desc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByYearPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearPublished', Sort.asc);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QAfterSortBy>
      thenByYearPublishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearPublished', Sort.desc);
    });
  }
}

extension BoardGameDbEntryQueryWhereDistinct
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct> {
  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByGameId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gameId');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByMaxPlayTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxPlayTime');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByMaxPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxPlayers');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByMinAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minAge');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByMinPlayTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minPlayTime');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByMinPlayers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minPlayers');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByNames() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'names');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByPlayingTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playingTime');
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByThumbnail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumbnail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QDistinct>
      distinctByYearPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'yearPublished');
    });
  }
}

extension BoardGameDbEntryQueryProperty
    on QueryBuilder<BoardGameDbEntry, BoardGameDbEntry, QQueryProperty> {
  QueryBuilder<BoardGameDbEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BoardGameDbEntry, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations> gameIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gameId');
    });
  }

  QueryBuilder<BoardGameDbEntry, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations> maxPlayTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxPlayTime');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations> maxPlayersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxPlayers');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations> minAgeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minAge');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations> minPlayTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minPlayTime');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations> minPlayersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minPlayers');
    });
  }

  QueryBuilder<BoardGameDbEntry, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<BoardGameDbEntry, List<String>, QQueryOperations>
      namesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'names');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations> playingTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playingTime');
    });
  }

  QueryBuilder<BoardGameDbEntry, String?, QQueryOperations>
      thumbnailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnail');
    });
  }

  QueryBuilder<BoardGameDbEntry, int?, QQueryOperations>
      yearPublishedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'yearPublished');
    });
  }
}
