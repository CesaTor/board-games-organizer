// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_db_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCollectionDbEntryCollection on Isar {
  IsarCollection<CollectionDbEntry> get collectionDbEntrys => this.collection();
}

const CollectionDbEntrySchema = CollectionSchema(
  name: r'CollectionDbEntry',
  id: 449904987545339611,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _collectionDbEntryEstimateSize,
  serialize: _collectionDbEntrySerialize,
  deserialize: _collectionDbEntryDeserialize,
  deserializeProp: _collectionDbEntryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'games': LinkSchema(
      id: 3194482782274431386,
      name: r'games',
      target: r'BoardGameDbEntry',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _collectionDbEntryGetId,
  getLinks: _collectionDbEntryGetLinks,
  attach: _collectionDbEntryAttach,
  version: '3.1.0',
);

int _collectionDbEntryEstimateSize(
  CollectionDbEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _collectionDbEntrySerialize(
  CollectionDbEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

CollectionDbEntry _collectionDbEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CollectionDbEntry(
    name: reader.readStringOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _collectionDbEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _collectionDbEntryGetId(CollectionDbEntry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _collectionDbEntryGetLinks(
    CollectionDbEntry object) {
  return [object.games];
}

void _collectionDbEntryAttach(
    IsarCollection<dynamic> col, Id id, CollectionDbEntry object) {
  object.id = id;
  object.games
      .attach(col, col.isar.collection<BoardGameDbEntry>(), r'games', id);
}

extension CollectionDbEntryQueryWhereSort
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QWhere> {
  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CollectionDbEntryQueryWhere
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QWhereClause> {
  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterWhereClause>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterWhereClause>
      idBetween(
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

extension CollectionDbEntryQueryFilter
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QFilterCondition> {
  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
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

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension CollectionDbEntryQueryObject
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QFilterCondition> {}

extension CollectionDbEntryQueryLinks
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QFilterCondition> {
  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      games(FilterQuery<BoardGameDbEntry> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'games');
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      gamesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'games', length, true, length, true);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      gamesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'games', 0, true, 0, true);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      gamesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'games', 0, false, 999999, true);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      gamesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'games', 0, true, length, include);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      gamesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'games', length, include, 999999, true);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterFilterCondition>
      gamesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'games', lower, includeLower, upper, includeUpper);
    });
  }
}

extension CollectionDbEntryQuerySortBy
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QSortBy> {
  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CollectionDbEntryQuerySortThenBy
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QSortThenBy> {
  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CollectionDbEntryQueryWhereDistinct
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QDistinct> {
  QueryBuilder<CollectionDbEntry, CollectionDbEntry, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension CollectionDbEntryQueryProperty
    on QueryBuilder<CollectionDbEntry, CollectionDbEntry, QQueryProperty> {
  QueryBuilder<CollectionDbEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CollectionDbEntry, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
