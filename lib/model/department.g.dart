// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Department> _$departmentSerializer = new _$DepartmentSerializer();

class _$DepartmentSerializer implements StructuredSerializer<Department> {
  @override
  final Iterable<Type> types = const [Department, _$Department];
  @override
  final String wireName = 'Department';

  @override
  Iterable<Object> serialize(Serializers serializers, Department object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.descriptions != null) {
      result
        ..add('descriptions')
        ..add(serializers.serialize(object.descriptions,
            specifiedType: const FullType(String)));
    }
    if (object.openingDate != null) {
      result
        ..add('openingDate')
        ..add(serializers.serialize(object.openingDate,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Department deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DepartmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descriptions':
          result.descriptions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'openingDate':
          result.openingDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Department extends Department {
  @override
  final int id;
  @override
  final String name;
  @override
  final String descriptions;
  @override
  final String openingDate;

  factory _$Department([void Function(DepartmentBuilder) updates]) =>
      (new DepartmentBuilder()..update(updates)).build();

  _$Department._({this.id, this.name, this.descriptions, this.openingDate})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Department', 'id');
    }
  }

  @override
  Department rebuild(void Function(DepartmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DepartmentBuilder toBuilder() => new DepartmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Department &&
        id == other.id &&
        name == other.name &&
        descriptions == other.descriptions &&
        openingDate == other.openingDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), descriptions.hashCode),
        openingDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Department')
          ..add('id', id)
          ..add('name', name)
          ..add('descriptions', descriptions)
          ..add('openingDate', openingDate))
        .toString();
  }
}

class DepartmentBuilder implements Builder<Department, DepartmentBuilder> {
  _$Department _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _descriptions;
  String get descriptions => _$this._descriptions;
  set descriptions(String descriptions) => _$this._descriptions = descriptions;

  String _openingDate;
  String get openingDate => _$this._openingDate;
  set openingDate(String openingDate) => _$this._openingDate = openingDate;

  DepartmentBuilder();

  DepartmentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _descriptions = _$v.descriptions;
      _openingDate = _$v.openingDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Department other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Department;
  }

  @override
  void update(void Function(DepartmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Department build() {
    final _$result = _$v ??
        new _$Department._(
            id: id,
            name: name,
            descriptions: descriptions,
            openingDate: openingDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
