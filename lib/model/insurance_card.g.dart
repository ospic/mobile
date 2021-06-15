// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InsuranceCard> _$insuranceCardSerializer =
    new _$InsuranceCardSerializer();

class _$InsuranceCardSerializer implements StructuredSerializer<InsuranceCard> {
  @override
  final Iterable<Type> types = const [InsuranceCard, _$InsuranceCard];
  @override
  final String wireName = 'InsuranceCard';

  @override
  Iterable<Object> serialize(Serializers serializers, InsuranceCard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'patientName',
      serializers.serialize(object.patientName,
          specifiedType: const FullType(String)),
      'membershipNumber',
      serializers.serialize(object.membershipNumber,
          specifiedType: const FullType(String)),
      'sex',
      serializers.serialize(object.sex, specifiedType: const FullType(String)),
      'voteNo',
      serializers.serialize(object.voteNo,
          specifiedType: const FullType(String)),
      'dateOfBirth',
      serializers.serialize(object.dateOfBirth,
          specifiedType: const FullType(String)),
      'issuedDate',
      serializers.serialize(object.issuedDate,
          specifiedType: const FullType(String)),
      'expireDate',
      serializers.serialize(object.expireDate,
          specifiedType: const FullType(String)),
      'codeNo',
      serializers.serialize(object.codeNo,
          specifiedType: const FullType(String)),
      'isActive',
      serializers.serialize(object.isActive,
          specifiedType: const FullType(bool)),
      'insurance',
      serializers.serialize(object.insurance,
          specifiedType: const FullType(Insurance)),
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
  InsuranceCard deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InsuranceCardBuilder();

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
        case 'patientName':
          result.patientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'membershipNumber':
          result.membershipNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'voteNo':
          result.voteNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuedDate':
          result.issuedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expireDate':
          result.expireDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'codeNo':
          result.codeNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'insurance':
          result.insurance.replace(serializers.deserialize(value,
              specifiedType: const FullType(Insurance)) as Insurance);
          break;
      }
    }

    return result.build();
  }
}

class _$InsuranceCard extends InsuranceCard {
  @override
  final int id;
  @override
  final String patientName;
  @override
  final String membershipNumber;
  @override
  final String sex;
  @override
  final String voteNo;
  @override
  final String dateOfBirth;
  @override
  final String issuedDate;
  @override
  final String expireDate;
  @override
  final String codeNo;
  @override
  final bool isActive;
  @override
  final Insurance insurance;

  factory _$InsuranceCard([void Function(InsuranceCardBuilder) updates]) =>
      (new InsuranceCardBuilder()..update(updates)).build();

  _$InsuranceCard._(
      {this.id,
      this.patientName,
      this.membershipNumber,
      this.sex,
      this.voteNo,
      this.dateOfBirth,
      this.issuedDate,
      this.expireDate,
      this.codeNo,
      this.isActive,
      this.insurance})
      : super._() {
    if (patientName == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'patientName');
    }
    if (membershipNumber == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'membershipNumber');
    }
    if (sex == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'sex');
    }
    if (voteNo == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'voteNo');
    }
    if (dateOfBirth == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'dateOfBirth');
    }
    if (issuedDate == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'issuedDate');
    }
    if (expireDate == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'expireDate');
    }
    if (codeNo == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'codeNo');
    }
    if (isActive == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'isActive');
    }
    if (insurance == null) {
      throw new BuiltValueNullFieldError('InsuranceCard', 'insurance');
    }
  }

  @override
  InsuranceCard rebuild(void Function(InsuranceCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsuranceCardBuilder toBuilder() => new InsuranceCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InsuranceCard &&
        id == other.id &&
        patientName == other.patientName &&
        membershipNumber == other.membershipNumber &&
        sex == other.sex &&
        voteNo == other.voteNo &&
        dateOfBirth == other.dateOfBirth &&
        issuedDate == other.issuedDate &&
        expireDate == other.expireDate &&
        codeNo == other.codeNo &&
        isActive == other.isActive &&
        insurance == other.insurance;
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
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            patientName.hashCode),
                                        membershipNumber.hashCode),
                                    sex.hashCode),
                                voteNo.hashCode),
                            dateOfBirth.hashCode),
                        issuedDate.hashCode),
                    expireDate.hashCode),
                codeNo.hashCode),
            isActive.hashCode),
        insurance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InsuranceCard')
          ..add('id', id)
          ..add('patientName', patientName)
          ..add('membershipNumber', membershipNumber)
          ..add('sex', sex)
          ..add('voteNo', voteNo)
          ..add('dateOfBirth', dateOfBirth)
          ..add('issuedDate', issuedDate)
          ..add('expireDate', expireDate)
          ..add('codeNo', codeNo)
          ..add('isActive', isActive)
          ..add('insurance', insurance))
        .toString();
  }
}

class InsuranceCardBuilder
    implements Builder<InsuranceCard, InsuranceCardBuilder> {
  _$InsuranceCard _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _patientName;
  String get patientName => _$this._patientName;
  set patientName(String patientName) => _$this._patientName = patientName;

  String _membershipNumber;
  String get membershipNumber => _$this._membershipNumber;
  set membershipNumber(String membershipNumber) =>
      _$this._membershipNumber = membershipNumber;

  String _sex;
  String get sex => _$this._sex;
  set sex(String sex) => _$this._sex = sex;

  String _voteNo;
  String get voteNo => _$this._voteNo;
  set voteNo(String voteNo) => _$this._voteNo = voteNo;

  String _dateOfBirth;
  String get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String _issuedDate;
  String get issuedDate => _$this._issuedDate;
  set issuedDate(String issuedDate) => _$this._issuedDate = issuedDate;

  String _expireDate;
  String get expireDate => _$this._expireDate;
  set expireDate(String expireDate) => _$this._expireDate = expireDate;

  String _codeNo;
  String get codeNo => _$this._codeNo;
  set codeNo(String codeNo) => _$this._codeNo = codeNo;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  InsuranceBuilder _insurance;
  InsuranceBuilder get insurance =>
      _$this._insurance ??= new InsuranceBuilder();
  set insurance(InsuranceBuilder insurance) => _$this._insurance = insurance;

  InsuranceCardBuilder();

  InsuranceCardBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _patientName = _$v.patientName;
      _membershipNumber = _$v.membershipNumber;
      _sex = _$v.sex;
      _voteNo = _$v.voteNo;
      _dateOfBirth = _$v.dateOfBirth;
      _issuedDate = _$v.issuedDate;
      _expireDate = _$v.expireDate;
      _codeNo = _$v.codeNo;
      _isActive = _$v.isActive;
      _insurance = _$v.insurance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InsuranceCard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InsuranceCard;
  }

  @override
  void update(void Function(InsuranceCardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InsuranceCard build() {
    _$InsuranceCard _$result;
    try {
      _$result = _$v ??
          new _$InsuranceCard._(
              id: id,
              patientName: patientName,
              membershipNumber: membershipNumber,
              sex: sex,
              voteNo: voteNo,
              dateOfBirth: dateOfBirth,
              issuedDate: issuedDate,
              expireDate: expireDate,
              codeNo: codeNo,
              isActive: isActive,
              insurance: insurance.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'insurance';
        insurance.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InsuranceCard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
