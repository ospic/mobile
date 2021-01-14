// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupsResponse> _$groupsResponseSerializer =
    new _$GroupsResponseSerializer();

class _$GroupsResponseSerializer
    implements StructuredSerializer<GroupsResponse> {
  @override
  final Iterable<Type> types = const [GroupsResponse, _$GroupsResponse];
  @override
  final String wireName = 'GroupsResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, GroupsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'groupId',
      serializers.serialize(object.groupId, specifiedType: const FullType(int)),
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

    return result;
  }

  @override
  GroupsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupsResponseBuilder();

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
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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

class _$GroupsResponse extends GroupsResponse {
  @override
  final String username;
  @override
  final String password;
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

  factory _$GroupsResponse([void Function(GroupsResponseBuilder) updates]) =>
      (new GroupsResponseBuilder()..update(updates)).build();

  _$GroupsResponse._(
      {this.username,
      this.password,
      this.groupId,
      this.groupAcct,
      this.groupName,
      this.groupType,
      this.totalMembers,
      this.sharePrice})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'username');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'password');
    }
    if (groupId == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'groupId');
    }
    if (groupAcct == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'groupAcct');
    }
    if (groupName == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'groupName');
    }
    if (groupType == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'groupType');
    }
    if (totalMembers == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'totalMembers');
    }
    if (sharePrice == null) {
      throw new BuiltValueNullFieldError('GroupsResponse', 'sharePrice');
    }
  }

  @override
  GroupsResponse rebuild(void Function(GroupsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupsResponseBuilder toBuilder() =>
      new GroupsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupsResponse &&
        username == other.username &&
        password == other.password &&
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
                $jc(
                    $jc(
                        $jc($jc($jc(0, username.hashCode), password.hashCode),
                            groupId.hashCode),
                        groupAcct.hashCode),
                    groupName.hashCode),
                groupType.hashCode),
            totalMembers.hashCode),
        sharePrice.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupsResponse')
          ..add('username', username)
          ..add('password', password)
          ..add('groupId', groupId)
          ..add('groupAcct', groupAcct)
          ..add('groupName', groupName)
          ..add('groupType', groupType)
          ..add('totalMembers', totalMembers)
          ..add('sharePrice', sharePrice))
        .toString();
  }
}

class GroupsResponseBuilder
    implements Builder<GroupsResponse, GroupsResponseBuilder> {
  _$GroupsResponse _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

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

  GroupsResponseBuilder();

  GroupsResponseBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _password = _$v.password;
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
  void replace(GroupsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GroupsResponse;
  }

  @override
  void update(void Function(GroupsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupsResponse build() {
    final _$result = _$v ??
        new _$GroupsResponse._(
            username: username,
            password: password,
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
