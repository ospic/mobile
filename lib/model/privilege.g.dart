// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privilege.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Privilege> _$privilegeSerializer = new _$PrivilegeSerializer();

class _$PrivilegeSerializer implements StructuredSerializer<Privilege> {
  @override
  final Iterable<Type> types = const [Privilege, _$Privilege];
  @override
  final String wireName = 'Privilege';

  @override
  Iterable<Object?> serialize(Serializers serializers, Privilege object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'roles',
      serializers.serialize(object.roles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Privilege deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrivilegeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'roles':
          result.roles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Privilege extends Privilege {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final BuiltList<String> roles;

  factory _$Privilege([void Function(PrivilegeBuilder)? updates]) =>
      (new PrivilegeBuilder()..update(updates)).build();

  _$Privilege._({this.id, this.name, required this.roles}) : super._() {
    BuiltValueNullFieldError.checkNotNull(roles, 'Privilege', 'roles');
  }

  @override
  Privilege rebuild(void Function(PrivilegeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivilegeBuilder toBuilder() => new PrivilegeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Privilege &&
        id == other.id &&
        name == other.name &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), roles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Privilege')
          ..add('id', id)
          ..add('name', name)
          ..add('roles', roles))
        .toString();
  }
}

class PrivilegeBuilder implements Builder<Privilege, PrivilegeBuilder> {
  _$Privilege? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= new ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  PrivilegeBuilder();

  PrivilegeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _roles = $v.roles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Privilege other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Privilege;
  }

  @override
  void update(void Function(PrivilegeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Privilege build() {
    _$Privilege _$result;
    try {
      _$result =
          _$v ?? new _$Privilege._(id: id, name: name, roles: roles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Privilege', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
