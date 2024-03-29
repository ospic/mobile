// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BillPayload> _$billPayloadSerializer = new _$BillPayloadSerializer();

class _$BillPayloadSerializer implements StructuredSerializer<BillPayload> {
  @override
  final Iterable<Type> types = const [BillPayload, _$BillPayload];
  @override
  final String wireName = 'BillPayload';

  @override
  Iterable<Object?> serialize(Serializers serializers, BillPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'transactionResponse',
      serializers.serialize(object.transactionResponse,
          specifiedType: const FullType(TransactionResponse)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isPaid;
    if (value != null) {
      result
        ..add('isPaid')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.extraId;
    if (value != null) {
      result
        ..add('extraId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalAmount;
    if (value != null) {
      result
        ..add('totalAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.paidAmount;
    if (value != null) {
      result
        ..add('paidAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.consultationId;
    if (value != null) {
      result
        ..add('consultationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.patientId;
    if (value != null) {
      result
        ..add('patientId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.patientName;
    if (value != null) {
      result
        ..add('patientName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
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
    value = object.createdDate;
    if (value != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastUpdatedDate;
    if (value != null) {
      result
        ..add('lastUpdatedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastUpdatedBy;
    if (value != null) {
      result
        ..add('lastUpdatedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BillPayload deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BillPayloadBuilder();

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
        case 'isPaid':
          result.isPaid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'extraId':
          result.extraId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalAmount':
          result.totalAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'paidAmount':
          result.paidAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'consultationId':
          result.consultationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'patientName':
          result.patientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastUpdatedDate':
          result.lastUpdatedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastUpdatedBy':
          result.lastUpdatedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transactionResponse':
          result.transactionResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransactionResponse))!
              as TransactionResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$BillPayload extends BillPayload {
  @override
  final int? id;
  @override
  final bool? isPaid;
  @override
  final String? extraId;
  @override
  final double? totalAmount;
  @override
  final double? paidAmount;
  @override
  final int? consultationId;
  @override
  final int? patientId;
  @override
  final bool? isActive;
  @override
  final String? patientName;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  final String? emailAddress;
  @override
  final String? createdDate;
  @override
  final String? createdBy;
  @override
  final String? lastUpdatedDate;
  @override
  final String? lastUpdatedBy;
  @override
  final TransactionResponse transactionResponse;

  factory _$BillPayload([void Function(BillPayloadBuilder)? updates]) =>
      (new BillPayloadBuilder()..update(updates))._build();

  _$BillPayload._(
      {this.id,
      this.isPaid,
      this.extraId,
      this.totalAmount,
      this.paidAmount,
      this.consultationId,
      this.patientId,
      this.isActive,
      this.patientName,
      this.phoneNumber,
      this.address,
      this.emailAddress,
      this.createdDate,
      this.createdBy,
      this.lastUpdatedDate,
      this.lastUpdatedBy,
      required this.transactionResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionResponse, r'BillPayload', 'transactionResponse');
  }

  @override
  BillPayload rebuild(void Function(BillPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BillPayloadBuilder toBuilder() => new BillPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BillPayload &&
        id == other.id &&
        isPaid == other.isPaid &&
        extraId == other.extraId &&
        totalAmount == other.totalAmount &&
        paidAmount == other.paidAmount &&
        consultationId == other.consultationId &&
        patientId == other.patientId &&
        isActive == other.isActive &&
        patientName == other.patientName &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        emailAddress == other.emailAddress &&
        createdDate == other.createdDate &&
        createdBy == other.createdBy &&
        lastUpdatedDate == other.lastUpdatedDate &&
        lastUpdatedBy == other.lastUpdatedBy &&
        transactionResponse == other.transactionResponse;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    isPaid
                                                                        .hashCode),
                                                                extraId
                                                                    .hashCode),
                                                            totalAmount
                                                                .hashCode),
                                                        paidAmount.hashCode),
                                                    consultationId.hashCode),
                                                patientId.hashCode),
                                            isActive.hashCode),
                                        patientName.hashCode),
                                    phoneNumber.hashCode),
                                address.hashCode),
                            emailAddress.hashCode),
                        createdDate.hashCode),
                    createdBy.hashCode),
                lastUpdatedDate.hashCode),
            lastUpdatedBy.hashCode),
        transactionResponse.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BillPayload')
          ..add('id', id)
          ..add('isPaid', isPaid)
          ..add('extraId', extraId)
          ..add('totalAmount', totalAmount)
          ..add('paidAmount', paidAmount)
          ..add('consultationId', consultationId)
          ..add('patientId', patientId)
          ..add('isActive', isActive)
          ..add('patientName', patientName)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('emailAddress', emailAddress)
          ..add('createdDate', createdDate)
          ..add('createdBy', createdBy)
          ..add('lastUpdatedDate', lastUpdatedDate)
          ..add('lastUpdatedBy', lastUpdatedBy)
          ..add('transactionResponse', transactionResponse))
        .toString();
  }
}

class BillPayloadBuilder implements Builder<BillPayload, BillPayloadBuilder> {
  _$BillPayload? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isPaid;
  bool? get isPaid => _$this._isPaid;
  set isPaid(bool? isPaid) => _$this._isPaid = isPaid;

  String? _extraId;
  String? get extraId => _$this._extraId;
  set extraId(String? extraId) => _$this._extraId = extraId;

  double? _totalAmount;
  double? get totalAmount => _$this._totalAmount;
  set totalAmount(double? totalAmount) => _$this._totalAmount = totalAmount;

  double? _paidAmount;
  double? get paidAmount => _$this._paidAmount;
  set paidAmount(double? paidAmount) => _$this._paidAmount = paidAmount;

  int? _consultationId;
  int? get consultationId => _$this._consultationId;
  set consultationId(int? consultationId) =>
      _$this._consultationId = consultationId;

  int? _patientId;
  int? get patientId => _$this._patientId;
  set patientId(int? patientId) => _$this._patientId = patientId;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _patientName;
  String? get patientName => _$this._patientName;
  set patientName(String? patientName) => _$this._patientName = patientName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _createdDate;
  String? get createdDate => _$this._createdDate;
  set createdDate(String? createdDate) => _$this._createdDate = createdDate;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _lastUpdatedDate;
  String? get lastUpdatedDate => _$this._lastUpdatedDate;
  set lastUpdatedDate(String? lastUpdatedDate) =>
      _$this._lastUpdatedDate = lastUpdatedDate;

  String? _lastUpdatedBy;
  String? get lastUpdatedBy => _$this._lastUpdatedBy;
  set lastUpdatedBy(String? lastUpdatedBy) =>
      _$this._lastUpdatedBy = lastUpdatedBy;

  TransactionResponseBuilder? _transactionResponse;
  TransactionResponseBuilder get transactionResponse =>
      _$this._transactionResponse ??= new TransactionResponseBuilder();
  set transactionResponse(TransactionResponseBuilder? transactionResponse) =>
      _$this._transactionResponse = transactionResponse;

  BillPayloadBuilder();

  BillPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isPaid = $v.isPaid;
      _extraId = $v.extraId;
      _totalAmount = $v.totalAmount;
      _paidAmount = $v.paidAmount;
      _consultationId = $v.consultationId;
      _patientId = $v.patientId;
      _isActive = $v.isActive;
      _patientName = $v.patientName;
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _emailAddress = $v.emailAddress;
      _createdDate = $v.createdDate;
      _createdBy = $v.createdBy;
      _lastUpdatedDate = $v.lastUpdatedDate;
      _lastUpdatedBy = $v.lastUpdatedBy;
      _transactionResponse = $v.transactionResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BillPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BillPayload;
  }

  @override
  void update(void Function(BillPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BillPayload build() => _build();

  _$BillPayload _build() {
    _$BillPayload _$result;
    try {
      _$result = _$v ??
          new _$BillPayload._(
              id: id,
              isPaid: isPaid,
              extraId: extraId,
              totalAmount: totalAmount,
              paidAmount: paidAmount,
              consultationId: consultationId,
              patientId: patientId,
              isActive: isActive,
              patientName: patientName,
              phoneNumber: phoneNumber,
              address: address,
              emailAddress: emailAddress,
              createdDate: createdDate,
              createdBy: createdBy,
              lastUpdatedDate: lastUpdatedDate,
              lastUpdatedBy: lastUpdatedBy,
              transactionResponse: transactionResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactionResponse';
        transactionResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BillPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
