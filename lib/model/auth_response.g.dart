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
  Iterable<Object> serialize(Serializers serializers, AuthResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'base64EncodedAuthenticationKey',
      serializers.serialize(object.base64EncodedAuthenticationKey,
          specifiedType: const FullType(String)),
      'authenticated',
      serializers.serialize(object.authenticated,
          specifiedType: const FullType(bool)),
      'officeId',
      serializers.serialize(object.officeId,
          specifiedType: const FullType(int)),
      'officeName',
      serializers.serialize(object.officeName,
          specifiedType: const FullType(String)),
      'isTwoFactorAuthenticationRequired',
      serializers.serialize(object.isTwoFactorAuthenticationRequired,
          specifiedType: const FullType(bool)),
    ];
    if (object.roles != null) {
      result
        ..add('roles')
        ..add(serializers.serialize(object.roles,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AuthRole)])));
    }
    if (object.shouldRenewPassword != null) {
      result
        ..add('shouldRenewPassword')
        ..add(serializers.serialize(object.shouldRenewPassword,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AuthResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'base64EncodedAuthenticationKey':
          result.base64EncodedAuthenticationKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'authenticated':
          result.authenticated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'officeId':
          result.officeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'roles':
          result.roles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AuthRole)]))
              as BuiltList<dynamic>);
          break;
        case 'officeName':
          result.officeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shouldRenewPassword':
          result.shouldRenewPassword = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isTwoFactorAuthenticationRequired':
          result.isTwoFactorAuthenticationRequired = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthResponse extends AuthResponse {
  @override
  final String username;
  @override
  final int userId;
  @override
  final String base64EncodedAuthenticationKey;
  @override
  final bool authenticated;
  @override
  final int officeId;
  @override
  final BuiltList<AuthRole> roles;
  @override
  final String officeName;
  @override
  final bool shouldRenewPassword;
  @override
  final bool isTwoFactorAuthenticationRequired;

  factory _$AuthResponse([void Function(AuthResponseBuilder) updates]) =>
      (new AuthResponseBuilder()..update(updates)).build();

  _$AuthResponse._(
      {this.username,
      this.userId,
      this.base64EncodedAuthenticationKey,
      this.authenticated,
      this.officeId,
      this.roles,
      this.officeName,
      this.shouldRenewPassword,
      this.isTwoFactorAuthenticationRequired})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('AuthResponse', 'username');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('AuthResponse', 'userId');
    }
    if (base64EncodedAuthenticationKey == null) {
      throw new BuiltValueNullFieldError(
          'AuthResponse', 'base64EncodedAuthenticationKey');
    }
    if (authenticated == null) {
      throw new BuiltValueNullFieldError('AuthResponse', 'authenticated');
    }
    if (officeId == null) {
      throw new BuiltValueNullFieldError('AuthResponse', 'officeId');
    }
    if (officeName == null) {
      throw new BuiltValueNullFieldError('AuthResponse', 'officeName');
    }
    if (isTwoFactorAuthenticationRequired == null) {
      throw new BuiltValueNullFieldError(
          'AuthResponse', 'isTwoFactorAuthenticationRequired');
    }
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
        username == other.username &&
        userId == other.userId &&
        base64EncodedAuthenticationKey ==
            other.base64EncodedAuthenticationKey &&
        authenticated == other.authenticated &&
        officeId == other.officeId &&
        roles == other.roles &&
        officeName == other.officeName &&
        shouldRenewPassword == other.shouldRenewPassword &&
        isTwoFactorAuthenticationRequired ==
            other.isTwoFactorAuthenticationRequired;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, username.hashCode), userId.hashCode),
                                base64EncodedAuthenticationKey.hashCode),
                            authenticated.hashCode),
                        officeId.hashCode),
                    roles.hashCode),
                officeName.hashCode),
            shouldRenewPassword.hashCode),
        isTwoFactorAuthenticationRequired.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthResponse')
          ..add('username', username)
          ..add('userId', userId)
          ..add(
              'base64EncodedAuthenticationKey', base64EncodedAuthenticationKey)
          ..add('authenticated', authenticated)
          ..add('officeId', officeId)
          ..add('roles', roles)
          ..add('officeName', officeName)
          ..add('shouldRenewPassword', shouldRenewPassword)
          ..add('isTwoFactorAuthenticationRequired',
              isTwoFactorAuthenticationRequired))
        .toString();
  }
}

class AuthResponseBuilder
    implements Builder<AuthResponse, AuthResponseBuilder> {
  _$AuthResponse _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _base64EncodedAuthenticationKey;
  String get base64EncodedAuthenticationKey =>
      _$this._base64EncodedAuthenticationKey;
  set base64EncodedAuthenticationKey(String base64EncodedAuthenticationKey) =>
      _$this._base64EncodedAuthenticationKey = base64EncodedAuthenticationKey;

  bool _authenticated;
  bool get authenticated => _$this._authenticated;
  set authenticated(bool authenticated) =>
      _$this._authenticated = authenticated;

  int _officeId;
  int get officeId => _$this._officeId;
  set officeId(int officeId) => _$this._officeId = officeId;

  ListBuilder<AuthRole> _roles;
  ListBuilder<AuthRole> get roles =>
      _$this._roles ??= new ListBuilder<AuthRole>();
  set roles(ListBuilder<AuthRole> roles) => _$this._roles = roles;

  String _officeName;
  String get officeName => _$this._officeName;
  set officeName(String officeName) => _$this._officeName = officeName;

  bool _shouldRenewPassword;
  bool get shouldRenewPassword => _$this._shouldRenewPassword;
  set shouldRenewPassword(bool shouldRenewPassword) =>
      _$this._shouldRenewPassword = shouldRenewPassword;

  bool _isTwoFactorAuthenticationRequired;
  bool get isTwoFactorAuthenticationRequired =>
      _$this._isTwoFactorAuthenticationRequired;
  set isTwoFactorAuthenticationRequired(
          bool isTwoFactorAuthenticationRequired) =>
      _$this._isTwoFactorAuthenticationRequired =
          isTwoFactorAuthenticationRequired;

  AuthResponseBuilder();

  AuthResponseBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _userId = _$v.userId;
      _base64EncodedAuthenticationKey = _$v.base64EncodedAuthenticationKey;
      _authenticated = _$v.authenticated;
      _officeId = _$v.officeId;
      _roles = _$v.roles?.toBuilder();
      _officeName = _$v.officeName;
      _shouldRenewPassword = _$v.shouldRenewPassword;
      _isTwoFactorAuthenticationRequired =
          _$v.isTwoFactorAuthenticationRequired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthResponse;
  }

  @override
  void update(void Function(AuthResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthResponse build() {
    _$AuthResponse _$result;
    try {
      _$result = _$v ??
          new _$AuthResponse._(
              username: username,
              userId: userId,
              base64EncodedAuthenticationKey: base64EncodedAuthenticationKey,
              authenticated: authenticated,
              officeId: officeId,
              roles: _roles?.build(),
              officeName: officeName,
              shouldRenewPassword: shouldRenewPassword,
              isTwoFactorAuthenticationRequired:
                  isTwoFactorAuthenticationRequired);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
