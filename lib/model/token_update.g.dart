// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TokenUpdate> _$tokenUpdateSerializer = new _$TokenUpdateSerializer();

class _$TokenUpdateSerializer implements StructuredSerializer<TokenUpdate> {
  @override
  final Iterable<Type> types = const [TokenUpdate, _$TokenUpdate];
  @override
  final String wireName = 'TokenUpdate';

  @override
  Iterable<Object?> serialize(Serializers serializers, TokenUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TokenUpdate deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenUpdateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$TokenUpdate extends TokenUpdate {
  @override
  final String? token;

  factory _$TokenUpdate([void Function(TokenUpdateBuilder)? updates]) =>
      (new TokenUpdateBuilder()..update(updates))._build();

  _$TokenUpdate._({this.token}) : super._();

  @override
  TokenUpdate rebuild(void Function(TokenUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenUpdateBuilder toBuilder() => new TokenUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenUpdate && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenUpdate')..add('token', token))
        .toString();
  }
}

class TokenUpdateBuilder implements Builder<TokenUpdate, TokenUpdateBuilder> {
  _$TokenUpdate? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  TokenUpdateBuilder();

  TokenUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenUpdate;
  }

  @override
  void update(void Function(TokenUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenUpdate build() => _build();

  _$TokenUpdate _build() {
    final _$result = _$v ?? new _$TokenUpdate._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
