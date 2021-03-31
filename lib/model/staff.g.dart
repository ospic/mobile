// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Staff> _$staffSerializer = new _$StaffSerializer();

class _$StaffSerializer implements StructuredSerializer<Staff> {
  @override
  final Iterable<Type> types = const [Staff, _$Staff];
  @override
  final String wireName = 'Staff';

  @override
  Iterable<Object> serialize(Serializers serializers, Staff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'department',
      serializers.serialize(object.department,
          specifiedType: const FullType(Department)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.fullName != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(object.fullName,
            specifiedType: const FullType(String)));
    }
    if (object.contacts != null) {
      result
        ..add('contacts')
        ..add(serializers.serialize(object.contacts,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.level != null) {
      result
        ..add('level')
        ..add(serializers.serialize(object.level,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.isActive != null) {
      result
        ..add('isActive')
        ..add(serializers.serialize(object.isActive,
            specifiedType: const FullType(bool)));
    }
    if (object.isAvailable != null) {
      result
        ..add('isAvailable')
        ..add(serializers.serialize(object.isAvailable,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Staff deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StaffBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contacts':
          result.contacts = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'department':
          result.department.replace(serializers.deserialize(value,
              specifiedType: const FullType(Department)) as Department);
          break;
      }
    }

    return result.build();
  }
}

class _$Staff extends Staff {
  @override
  final int id;
  @override
  final String username;
  @override
  final String fullName;
  @override
  final String contacts;
  @override
  final String imageUrl;
  @override
  final String level;
  @override
  final String email;
  @override
  final bool isActive;
  @override
  final bool isAvailable;
  @override
  final Department department;

  factory _$Staff([void Function(StaffBuilder) updates]) =>
      (new StaffBuilder()..update(updates)).build();

  _$Staff._(
      {this.id,
      this.username,
      this.fullName,
      this.contacts,
      this.imageUrl,
      this.level,
      this.email,
      this.isActive,
      this.isAvailable,
      this.department})
      : super._() {
    if (department == null) {
      throw new BuiltValueNullFieldError('Staff', 'department');
    }
  }

  @override
  Staff rebuild(void Function(StaffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaffBuilder toBuilder() => new StaffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Staff &&
        id == other.id &&
        username == other.username &&
        fullName == other.fullName &&
        contacts == other.contacts &&
        imageUrl == other.imageUrl &&
        level == other.level &&
        email == other.email &&
        isActive == other.isActive &&
        isAvailable == other.isAvailable &&
        department == other.department;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), username.hashCode),
                                    fullName.hashCode),
                                contacts.hashCode),
                            imageUrl.hashCode),
                        level.hashCode),
                    email.hashCode),
                isActive.hashCode),
            isAvailable.hashCode),
        department.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Staff')
          ..add('id', id)
          ..add('username', username)
          ..add('fullName', fullName)
          ..add('contacts', contacts)
          ..add('imageUrl', imageUrl)
          ..add('level', level)
          ..add('email', email)
          ..add('isActive', isActive)
          ..add('isAvailable', isAvailable)
          ..add('department', department))
        .toString();
  }
}

class StaffBuilder implements Builder<Staff, StaffBuilder> {
  _$Staff _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _contacts;
  String get contacts => _$this._contacts;
  set contacts(String contacts) => _$this._contacts = contacts;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _level;
  String get level => _$this._level;
  set level(String level) => _$this._level = level;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  bool _isAvailable;
  bool get isAvailable => _$this._isAvailable;
  set isAvailable(bool isAvailable) => _$this._isAvailable = isAvailable;

  DepartmentBuilder _department;
  DepartmentBuilder get department =>
      _$this._department ??= new DepartmentBuilder();
  set department(DepartmentBuilder department) =>
      _$this._department = department;

  StaffBuilder();

  StaffBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
      _fullName = _$v.fullName;
      _contacts = _$v.contacts;
      _imageUrl = _$v.imageUrl;
      _level = _$v.level;
      _email = _$v.email;
      _isActive = _$v.isActive;
      _isAvailable = _$v.isAvailable;
      _department = _$v.department?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Staff other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Staff;
  }

  @override
  void update(void Function(StaffBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Staff build() {
    _$Staff _$result;
    try {
      _$result = _$v ??
          new _$Staff._(
              id: id,
              username: username,
              fullName: fullName,
              contacts: contacts,
              imageUrl: imageUrl,
              level: level,
              email: email,
              isActive: isActive,
              isAvailable: isAvailable,
              department: department.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'department';
        department.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Staff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
