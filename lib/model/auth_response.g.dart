// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthResponse> _$authResponseSerializer =
    new _$AuthResponseSerializer();

class _$AuthResponseSerializer implements StructuredSerializer<AuthResponse> {
  @override
  final Iterable<Type> types = const [AuthResponse, _$AuthResponse];
  @override
  final String wireName = 'AuthResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'permissions',
      serializers.serialize(object.permissions,
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
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessToken;
    if (value != null) {
      result
        ..add('accessToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AuthResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthResponseBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthResponse extends AuthResponse {
  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? accessToken;
  @override
  final BuiltList<String> permissions;

  factory _$AuthResponse([void Function(AuthResponseBuilder)? updates]) =>
      (new AuthResponseBuilder()..update(updates))._build();

  _$AuthResponse._(
      {this.id,
      this.email,
      this.username,
      this.accessToken,
      required this.permissions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'AuthResponse', 'permissions');
  }

  @override
  AuthResponse rebuild(void Function(AuthResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthResponseBuilder toBuilder() => new AuthResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthResponse &&
        id == other.id &&
        email == other.email &&
        username == other.username &&
        accessToken == other.accessToken &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), email.hashCode), username.hashCode),
            accessToken.hashCode),
        permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthResponse')
          ..add('id', id)
          ..add('email', email)
          ..add('username', username)
          ..add('accessToken', accessToken)
          ..add('permissions', permissions))
        .toString();
  }
}

class AuthResponseBuilder
    implements Builder<AuthResponse, AuthResponseBuilder> {
  _$AuthResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= new ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  AuthResponseBuilder();

  AuthResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _username = $v.username;
      _accessToken = $v.accessToken;
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthResponse;
  }

  @override
  void update(void Function(AuthResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthResponse build() => _build();

  _$AuthResponse _build() {
    _$AuthResponse _$result;
    try {
      _$result = _$v ??
          new _$AuthResponse._(
              id: id,
              email: email,
              username: username,
              accessToken: accessToken,
              permissions: permissions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
