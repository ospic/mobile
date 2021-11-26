// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthPost> _$authPostSerializer = new _$AuthPostSerializer();

class _$AuthPostSerializer implements StructuredSerializer<AuthPost> {
  @override
  final Iterable<Type> types = const [AuthPost, _$AuthPost];
  @override
  final String wireName = 'AuthPost';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tenantId;
    if (value != null) {
      result
        ..add('tenantId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AuthPost deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tenantId':
          result.tenantId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthPost extends AuthPost {
  @override
  final String? username;
  @override
  final String? password;
  @override
  final int? tenantId;

  factory _$AuthPost([void Function(AuthPostBuilder)? updates]) =>
      (new AuthPostBuilder()..update(updates)).build();

  _$AuthPost._({this.username, this.password, this.tenantId}) : super._();

  @override
  AuthPost rebuild(void Function(AuthPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthPostBuilder toBuilder() => new AuthPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthPost &&
        username == other.username &&
        password == other.password &&
        tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, username.hashCode), password.hashCode), tenantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthPost')
          ..add('username', username)
          ..add('password', password)
          ..add('tenantId', tenantId))
        .toString();
  }
}

class AuthPostBuilder implements Builder<AuthPost, AuthPostBuilder> {
  _$AuthPost? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  int? _tenantId;
  int? get tenantId => _$this._tenantId;
  set tenantId(int? tenantId) => _$this._tenantId = tenantId;

  AuthPostBuilder();

  AuthPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _tenantId = $v.tenantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthPost;
  }

  @override
  void update(void Function(AuthPostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthPost build() {
    final _$result = _$v ??
        new _$AuthPost._(
            username: username, password: password, tenantId: tenantId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
