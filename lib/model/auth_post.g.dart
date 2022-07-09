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
    return result;
  }

  @override
  AuthPost deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
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

  factory _$AuthPost([void Function(AuthPostBuilder)? updates]) =>
      (new AuthPostBuilder()..update(updates))._build();

  _$AuthPost._({this.username, this.password}) : super._();

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
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthPost')
          ..add('username', username)
          ..add('password', password))
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

  AuthPostBuilder();

  AuthPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
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
  AuthPost build() => _build();

  _$AuthPost _build() {
    final _$result =
        _$v ?? new _$AuthPost._(username: username, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
