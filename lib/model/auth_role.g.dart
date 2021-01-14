// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthRole> _$authRoleSerializer = new _$AuthRoleSerializer();

class _$AuthRoleSerializer implements StructuredSerializer<AuthRole> {
  @override
  final Iterable<Type> types = const [AuthRole, _$AuthRole];
  @override
  final String wireName = 'AuthRole';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthRole object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'disabled',
      serializers.serialize(object.disabled,
          specifiedType: const FullType(bool)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AuthRole deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthRoleBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'disabled':
          result.disabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthRole extends AuthRole {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool disabled;

  factory _$AuthRole([void Function(AuthRoleBuilder) updates]) =>
      (new AuthRoleBuilder()..update(updates)).build();

  _$AuthRole._({this.id, this.name, this.description, this.disabled})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('AuthRole', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('AuthRole', 'description');
    }
    if (disabled == null) {
      throw new BuiltValueNullFieldError('AuthRole', 'disabled');
    }
  }

  @override
  AuthRole rebuild(void Function(AuthRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRoleBuilder toBuilder() => new AuthRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRole &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        disabled == other.disabled;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), description.hashCode),
        disabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthRole')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('disabled', disabled))
        .toString();
  }
}

class AuthRoleBuilder implements Builder<AuthRole, AuthRoleBuilder> {
  _$AuthRole _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _disabled;
  bool get disabled => _$this._disabled;
  set disabled(bool disabled) => _$this._disabled = disabled;

  AuthRoleBuilder();

  AuthRoleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _disabled = _$v.disabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRole other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthRole;
  }

  @override
  void update(void Function(AuthRoleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthRole build() {
    final _$result = _$v ??
        new _$AuthRole._(
            id: id, name: name, description: description, disabled: disabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
