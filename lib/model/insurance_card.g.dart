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
  Iterable<Object?> serialize(Serializers serializers, InsuranceCard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.patientName;
    if (value != null) {
      result
        ..add('patientName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.membershipNumber;
    if (value != null) {
      result
        ..add('membershipNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sex;
    if (value != null) {
      result
        ..add('sex')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.voteNo;
    if (value != null) {
      result
        ..add('voteNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuedDate;
    if (value != null) {
      result
        ..add('issuedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expireDate;
    if (value != null) {
      result
        ..add('expireDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codeNo;
    if (value != null) {
      result
        ..add('codeNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isNew;
    if (value != null) {
      result
        ..add('new')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.insurance;
    if (value != null) {
      result
        ..add('insurance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InsuranceCard deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InsuranceCardBuilder();

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
        case 'patientName':
          result.patientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'membershipNumber':
          result.membershipNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'voteNo':
          result.voteNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'issuedDate':
          result.issuedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expireDate':
          result.expireDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'codeNo':
          result.codeNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'new':
          result.isNew = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'insurance':
          result.insurance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$InsuranceCard extends InsuranceCard {
  @override
  final int? id;
  @override
  final String? patientName;
  @override
  final String? membershipNumber;
  @override
  final String? sex;
  @override
  final String? voteNo;
  @override
  final String? dateOfBirth;
  @override
  final String? issuedDate;
  @override
  final String? expireDate;
  @override
  final String? codeNo;
  @override
  final bool? isActive;
  @override
  final bool? isNew;
  @override
  final String? insurance;

  factory _$InsuranceCard([void Function(InsuranceCardBuilder)? updates]) =>
      (new InsuranceCardBuilder()..update(updates))._build();

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
      this.isNew,
      this.insurance})
      : super._();

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
        isNew == other.isNew &&
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
            isNew.hashCode),
        insurance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InsuranceCard')
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
          ..add('isNew', isNew)
          ..add('insurance', insurance))
        .toString();
  }
}

class InsuranceCardBuilder
    implements Builder<InsuranceCard, InsuranceCardBuilder> {
  _$InsuranceCard? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _patientName;
  String? get patientName => _$this._patientName;
  set patientName(String? patientName) => _$this._patientName = patientName;

  String? _membershipNumber;
  String? get membershipNumber => _$this._membershipNumber;
  set membershipNumber(String? membershipNumber) =>
      _$this._membershipNumber = membershipNumber;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _voteNo;
  String? get voteNo => _$this._voteNo;
  set voteNo(String? voteNo) => _$this._voteNo = voteNo;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _issuedDate;
  String? get issuedDate => _$this._issuedDate;
  set issuedDate(String? issuedDate) => _$this._issuedDate = issuedDate;

  String? _expireDate;
  String? get expireDate => _$this._expireDate;
  set expireDate(String? expireDate) => _$this._expireDate = expireDate;

  String? _codeNo;
  String? get codeNo => _$this._codeNo;
  set codeNo(String? codeNo) => _$this._codeNo = codeNo;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isNew;
  bool? get isNew => _$this._isNew;
  set isNew(bool? isNew) => _$this._isNew = isNew;

  String? _insurance;
  String? get insurance => _$this._insurance;
  set insurance(String? insurance) => _$this._insurance = insurance;

  InsuranceCardBuilder();

  InsuranceCardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _patientName = $v.patientName;
      _membershipNumber = $v.membershipNumber;
      _sex = $v.sex;
      _voteNo = $v.voteNo;
      _dateOfBirth = $v.dateOfBirth;
      _issuedDate = $v.issuedDate;
      _expireDate = $v.expireDate;
      _codeNo = $v.codeNo;
      _isActive = $v.isActive;
      _isNew = $v.isNew;
      _insurance = $v.insurance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InsuranceCard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InsuranceCard;
  }

  @override
  void update(void Function(InsuranceCardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InsuranceCard build() => _build();

  _$InsuranceCard _build() {
    final _$result = _$v ??
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
            isNew: isNew,
            insurance: insurance);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
