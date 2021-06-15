// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Insurance> _$insuranceSerializer = new _$InsuranceSerializer();

class _$InsuranceSerializer implements StructuredSerializer<Insurance> {
  @override
  final Iterable<Type> types = const [Insurance, _$Insurance];
  @override
  final String wireName = 'Insurance';

  @override
  Iterable<Object> serialize(Serializers serializers, Insurance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'poBox',
      serializers.serialize(object.poBox,
          specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'telephoneNo',
      serializers.serialize(object.telephoneNo,
          specifiedType: const FullType(String)),
      'emailAddress',
      serializers.serialize(object.emailAddress,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Insurance deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InsuranceBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poBox':
          result.poBox = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'telephoneNo':
          result.telephoneNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Insurance extends Insurance {
  @override
  final int id;
  @override
  final String name;
  @override
  final String poBox;
  @override
  final String location;
  @override
  final String telephoneNo;
  @override
  final String emailAddress;

  factory _$Insurance([void Function(InsuranceBuilder) updates]) =>
      (new InsuranceBuilder()..update(updates)).build();

  _$Insurance._(
      {this.id,
      this.name,
      this.poBox,
      this.location,
      this.telephoneNo,
      this.emailAddress})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Insurance', 'name');
    }
    if (poBox == null) {
      throw new BuiltValueNullFieldError('Insurance', 'poBox');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('Insurance', 'location');
    }
    if (telephoneNo == null) {
      throw new BuiltValueNullFieldError('Insurance', 'telephoneNo');
    }
    if (emailAddress == null) {
      throw new BuiltValueNullFieldError('Insurance', 'emailAddress');
    }
  }

  @override
  Insurance rebuild(void Function(InsuranceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsuranceBuilder toBuilder() => new InsuranceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Insurance &&
        id == other.id &&
        name == other.name &&
        poBox == other.poBox &&
        location == other.location &&
        telephoneNo == other.telephoneNo &&
        emailAddress == other.emailAddress;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), poBox.hashCode),
                location.hashCode),
            telephoneNo.hashCode),
        emailAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Insurance')
          ..add('id', id)
          ..add('name', name)
          ..add('poBox', poBox)
          ..add('location', location)
          ..add('telephoneNo', telephoneNo)
          ..add('emailAddress', emailAddress))
        .toString();
  }
}

class InsuranceBuilder implements Builder<Insurance, InsuranceBuilder> {
  _$Insurance _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _poBox;
  String get poBox => _$this._poBox;
  set poBox(String poBox) => _$this._poBox = poBox;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _telephoneNo;
  String get telephoneNo => _$this._telephoneNo;
  set telephoneNo(String telephoneNo) => _$this._telephoneNo = telephoneNo;

  String _emailAddress;
  String get emailAddress => _$this._emailAddress;
  set emailAddress(String emailAddress) => _$this._emailAddress = emailAddress;

  InsuranceBuilder();

  InsuranceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _poBox = _$v.poBox;
      _location = _$v.location;
      _telephoneNo = _$v.telephoneNo;
      _emailAddress = _$v.emailAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Insurance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Insurance;
  }

  @override
  void update(void Function(InsuranceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Insurance build() {
    final _$result = _$v ??
        new _$Insurance._(
            id: id,
            name: name,
            poBox: poBox,
            location: location,
            telephoneNo: telephoneNo,
            emailAddress: emailAddress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
