// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationModel> _$notificationModelSerializer =
    new _$NotificationModelSerializer();

class _$NotificationModelSerializer
    implements StructuredSerializer<NotificationModel> {
  @override
  final Iterable<Type> types = const [NotificationModel, _$NotificationModel];
  @override
  final String wireName = 'NotificationModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotificationModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.groupid;
    if (value != null) {
      result
        ..add('groupid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'groupid':
          result.groupid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationModel extends NotificationModel {
  @override
  final int? groupid;
  @override
  final int? requestId;
  @override
  final String? description;

  factory _$NotificationModel(
          [void Function(NotificationModelBuilder)? updates]) =>
      (new NotificationModelBuilder()..update(updates)).build();

  _$NotificationModel._({this.groupid, this.requestId, this.description})
      : super._();

  @override
  NotificationModel rebuild(void Function(NotificationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationModelBuilder toBuilder() =>
      new NotificationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationModel &&
        groupid == other.groupid &&
        requestId == other.requestId &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, groupid.hashCode), requestId.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationModel')
          ..add('groupid', groupid)
          ..add('requestId', requestId)
          ..add('description', description))
        .toString();
  }
}

class NotificationModelBuilder
    implements Builder<NotificationModel, NotificationModelBuilder> {
  _$NotificationModel? _$v;

  int? _groupid;
  int? get groupid => _$this._groupid;
  set groupid(int? groupid) => _$this._groupid = groupid;

  int? _requestId;
  int? get requestId => _$this._requestId;
  set requestId(int? requestId) => _$this._requestId = requestId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  NotificationModelBuilder();

  NotificationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupid = $v.groupid;
      _requestId = $v.requestId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationModel;
  }

  @override
  void update(void Function(NotificationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationModel build() {
    final _$result = _$v ??
        new _$NotificationModel._(
            groupid: groupid, requestId: requestId, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
