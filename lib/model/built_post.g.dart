// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltPost> _$builtPostSerializer = new _$BuiltPostSerializer();

class _$BuiltPostSerializer implements StructuredSerializer<BuiltPost> {
  @override
  final Iterable<Type> types = const [BuiltPost, _$BuiltPost];
  @override
  final String wireName = 'BuiltPost';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'groupAcct',
      serializers.serialize(object.groupAcct,
          specifiedType: const FullType(String)),
      'groupName',
      serializers.serialize(object.groupName,
          specifiedType: const FullType(String)),
      'groupType',
      serializers.serialize(object.groupType,
          specifiedType: const FullType(String)),
      'totalMembers',
      serializers.serialize(object.totalMembers,
          specifiedType: const FullType(int)),
      'sharePrice',
      serializers.serialize(object.sharePrice,
          specifiedType: const FullType(int)),
    ];
    if (object.groupId != null) {
      result
        ..add('groupId')
        ..add(serializers.serialize(object.groupId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'groupAcct':
          result.groupAcct = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'groupName':
          result.groupName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'groupType':
          result.groupType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalMembers':
          result.totalMembers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sharePrice':
          result.sharePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltPost extends BuiltPost {
  @override
  final int groupId;
  @override
  final String groupAcct;
  @override
  final String groupName;
  @override
  final String groupType;
  @override
  final int totalMembers;
  @override
  final int sharePrice;

  factory _$BuiltPost([void Function(BuiltPostBuilder) updates]) =>
      (new BuiltPostBuilder()..update(updates)).build();

  _$BuiltPost._(
      {this.groupId,
      this.groupAcct,
      this.groupName,
      this.groupType,
      this.totalMembers,
      this.sharePrice})
      : super._() {
    if (groupAcct == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'groupAcct');
    }
    if (groupName == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'groupName');
    }
    if (groupType == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'groupType');
    }
    if (totalMembers == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'totalMembers');
    }
    if (sharePrice == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'sharePrice');
    }
  }

  @override
  BuiltPost rebuild(void Function(BuiltPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPostBuilder toBuilder() => new BuiltPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPost &&
        groupId == other.groupId &&
        groupAcct == other.groupAcct &&
        groupName == other.groupName &&
        groupType == other.groupType &&
        totalMembers == other.totalMembers &&
        sharePrice == other.sharePrice;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, groupId.hashCode), groupAcct.hashCode),
                    groupName.hashCode),
                groupType.hashCode),
            totalMembers.hashCode),
        sharePrice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltPost')
          ..add('groupId', groupId)
          ..add('groupAcct', groupAcct)
          ..add('groupName', groupName)
          ..add('groupType', groupType)
          ..add('totalMembers', totalMembers)
          ..add('sharePrice', sharePrice))
        .toString();
  }
}

class BuiltPostBuilder implements Builder<BuiltPost, BuiltPostBuilder> {
  _$BuiltPost _$v;

  int _groupId;
  int get groupId => _$this._groupId;
  set groupId(int groupId) => _$this._groupId = groupId;

  String _groupAcct;
  String get groupAcct => _$this._groupAcct;
  set groupAcct(String groupAcct) => _$this._groupAcct = groupAcct;

  String _groupName;
  String get groupName => _$this._groupName;
  set groupName(String groupName) => _$this._groupName = groupName;

  String _groupType;
  String get groupType => _$this._groupType;
  set groupType(String groupType) => _$this._groupType = groupType;

  int _totalMembers;
  int get totalMembers => _$this._totalMembers;
  set totalMembers(int totalMembers) => _$this._totalMembers = totalMembers;

  int _sharePrice;
  int get sharePrice => _$this._sharePrice;
  set sharePrice(int sharePrice) => _$this._sharePrice = sharePrice;

  BuiltPostBuilder();

  BuiltPostBuilder get _$this {
    if (_$v != null) {
      _groupId = _$v.groupId;
      _groupAcct = _$v.groupAcct;
      _groupName = _$v.groupName;
      _groupType = _$v.groupType;
      _totalMembers = _$v.totalMembers;
      _sharePrice = _$v.sharePrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPost;
  }

  @override
  void update(void Function(BuiltPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPost build() {
    final _$result = _$v ??
        new _$BuiltPost._(
            groupId: groupId,
            groupAcct: groupAcct,
            groupName: groupName,
            groupType: groupType,
            totalMembers: totalMembers,
            sharePrice: sharePrice);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
