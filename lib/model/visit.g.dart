// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Visit> _$visitSerializer = new _$VisitSerializer();

class _$VisitSerializer implements StructuredSerializer<Visit> {
  @override
  final Iterable<Type> types = const [Visit, _$Visit];
  @override
  final String wireName = 'Visit';

  @override
  Iterable<Object?> serialize(Serializers serializers, Visit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.symptoms;
    if (value != null) {
      result
        ..add('symptoms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('dateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Visit deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VisitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'symptoms':
          result.symptoms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateTime':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Visit extends Visit {
  @override
  final int id;
  @override
  final String? symptoms;
  @override
  final String? date;

  factory _$Visit([void Function(VisitBuilder)? updates]) =>
      (new VisitBuilder()..update(updates))._build();

  _$Visit._({required this.id, this.symptoms, this.date}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Visit', 'id');
  }

  @override
  Visit rebuild(void Function(VisitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisitBuilder toBuilder() => new VisitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Visit &&
        id == other.id &&
        symptoms == other.symptoms &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), symptoms.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Visit')
          ..add('id', id)
          ..add('symptoms', symptoms)
          ..add('date', date))
        .toString();
  }
}

class VisitBuilder implements Builder<Visit, VisitBuilder> {
  _$Visit? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _symptoms;
  String? get symptoms => _$this._symptoms;
  set symptoms(String? symptoms) => _$this._symptoms = symptoms;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  VisitBuilder();

  VisitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _symptoms = $v.symptoms;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Visit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Visit;
  }

  @override
  void update(void Function(VisitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Visit build() => _build();

  _$Visit _build() {
    final _$result = _$v ??
        new _$Visit._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Visit', 'id'),
            symptoms: symptoms,
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
