// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PasswordUpdate> _$passwordUpdateSerializer =
    new _$PasswordUpdateSerializer();

class _$PasswordUpdateSerializer
    implements StructuredSerializer<PasswordUpdate> {
  @override
  final Iterable<Type> types = const [PasswordUpdate, _$PasswordUpdate];
  @override
  final String wireName = 'PasswordUpdate';

  @override
  Iterable<Object?> serialize(Serializers serializers, PasswordUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.oldPassword;
    if (value != null) {
      result
        ..add('oldPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newPassword;
    if (value != null) {
      result
        ..add('newPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PasswordUpdate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PasswordUpdateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'oldPassword':
          result.oldPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'newPassword':
          result.newPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PasswordUpdate extends PasswordUpdate {
  @override
  final String? oldPassword;
  @override
  final String? newPassword;

  factory _$PasswordUpdate([void Function(PasswordUpdateBuilder)? updates]) =>
      (new PasswordUpdateBuilder()..update(updates)).build();

  _$PasswordUpdate._({this.oldPassword, this.newPassword}) : super._();

  @override
  PasswordUpdate rebuild(void Function(PasswordUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordUpdateBuilder toBuilder() =>
      new PasswordUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordUpdate &&
        oldPassword == other.oldPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, oldPassword.hashCode), newPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PasswordUpdate')
          ..add('oldPassword', oldPassword)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class PasswordUpdateBuilder
    implements Builder<PasswordUpdate, PasswordUpdateBuilder> {
  _$PasswordUpdate? _$v;

  String? _oldPassword;
  String? get oldPassword => _$this._oldPassword;
  set oldPassword(String? oldPassword) => _$this._oldPassword = oldPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  PasswordUpdateBuilder();

  PasswordUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oldPassword = $v.oldPassword;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordUpdate;
  }

  @override
  void update(void Function(PasswordUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PasswordUpdate build() {
    final _$result = _$v ??
        new _$PasswordUpdate._(
            oldPassword: oldPassword, newPassword: newPassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
