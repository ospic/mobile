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
  Iterable<Object?> serialize(Serializers serializers, Insurance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.poBox;
    if (value != null) {
      result
        ..add('poBox')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telephoneNo;
    if (value != null) {
      result
        ..add('telephoneNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Insurance deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InsuranceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'poBox':
          result.poBox = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telephoneNo':
          result.telephoneNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Insurance extends Insurance {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? poBox;
  @override
  final String? location;
  @override
  final String? telephoneNo;
  @override
  final String? emailAddress;

  factory _$Insurance([void Function(InsuranceBuilder)? updates]) =>
      (new InsuranceBuilder()..update(updates))._build();

  _$Insurance._(
      {this.id,
      this.name,
      this.poBox,
      this.location,
      this.telephoneNo,
      this.emailAddress})
      : super._();

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
    return (newBuiltValueToStringHelper(r'Insurance')
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
  _$Insurance? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _poBox;
  String? get poBox => _$this._poBox;
  set poBox(String? poBox) => _$this._poBox = poBox;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _telephoneNo;
  String? get telephoneNo => _$this._telephoneNo;
  set telephoneNo(String? telephoneNo) => _$this._telephoneNo = telephoneNo;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  InsuranceBuilder();

  InsuranceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _poBox = $v.poBox;
      _location = $v.location;
      _telephoneNo = $v.telephoneNo;
      _emailAddress = $v.emailAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Insurance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Insurance;
  }

  @override
  void update(void Function(InsuranceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Insurance build() => _build();

  _$Insurance _build() {
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
