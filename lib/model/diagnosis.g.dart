// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Diagnosis> _$diagnosisSerializer = new _$DiagnosisSerializer();

class _$DiagnosisSerializer implements StructuredSerializer<Diagnosis> {
  @override
  final Iterable<Type> types = const [Diagnosis, _$Diagnosis];
  @override
  final String wireName = 'Diagnosis';

  @override
  Iterable<Object?> serialize(Serializers serializers, Diagnosis object,
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
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Diagnosis deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiagnosisBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Diagnosis extends Diagnosis {
  @override
  final int id;
  @override
  final String? symptoms;
  @override
  final String? date;

  factory _$Diagnosis([void Function(DiagnosisBuilder)? updates]) =>
      (new DiagnosisBuilder()..update(updates))._build();

  _$Diagnosis._({required this.id, this.symptoms, this.date}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Diagnosis', 'id');
  }

  @override
  Diagnosis rebuild(void Function(DiagnosisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiagnosisBuilder toBuilder() => new DiagnosisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Diagnosis &&
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
    return (newBuiltValueToStringHelper(r'Diagnosis')
          ..add('id', id)
          ..add('symptoms', symptoms)
          ..add('date', date))
        .toString();
  }
}

class DiagnosisBuilder implements Builder<Diagnosis, DiagnosisBuilder> {
  _$Diagnosis? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _symptoms;
  String? get symptoms => _$this._symptoms;
  set symptoms(String? symptoms) => _$this._symptoms = symptoms;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  DiagnosisBuilder();

  DiagnosisBuilder get _$this {
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
  void replace(Diagnosis other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Diagnosis;
  }

  @override
  void update(void Function(DiagnosisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Diagnosis build() => _build();

  _$Diagnosis _build() {
    final _$result = _$v ??
        new _$Diagnosis._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Diagnosis', 'id'),
            symptoms: symptoms,
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
