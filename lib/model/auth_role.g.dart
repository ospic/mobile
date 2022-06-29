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
  Iterable<Object?> serialize(Serializers serializers, AuthRole object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.disabled;
    if (value != null) {
      result
        ..add('disabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AuthRole deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthRoleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'disabled':
          result.disabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthRole extends AuthRole {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? disabled;

  factory _$AuthRole([void Function(AuthRoleBuilder)? updates]) =>
      (new AuthRoleBuilder()..update(updates))._build();

  _$AuthRole._({this.id, this.name, this.description, this.disabled})
      : super._();

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
    return (newBuiltValueToStringHelper(r'AuthRole')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('disabled', disabled))
        .toString();
  }
}

class AuthRoleBuilder implements Builder<AuthRole, AuthRoleBuilder> {
  _$AuthRole? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _disabled;
  bool? get disabled => _$this._disabled;
  set disabled(bool? disabled) => _$this._disabled = disabled;

  AuthRoleBuilder();

  AuthRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _disabled = $v.disabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRole other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthRole;
  }

  @override
  void update(void Function(AuthRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRole build() => _build();

  _$AuthRole _build() {
    final _$result = _$v ??
        new _$AuthRole._(
            id: id, name: name, description: description, disabled: disabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
