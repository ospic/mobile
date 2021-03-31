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
  Iterable<Object> serialize(Serializers serializers, BillPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'isPaid',
      serializers.serialize(object.isPaid, specifiedType: const FullType(bool)),
      'extraId',
      serializers.serialize(object.extraId,
          specifiedType: const FullType(String)),
      'consultationId',
      serializers.serialize(object.consultationId,
          specifiedType: const FullType(int)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(int)),
      'isActive',
      serializers.serialize(object.isActive,
          specifiedType: const FullType(bool)),
      'patientName',
      serializers.serialize(object.patientName,
          specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'emailAddress',
      serializers.serialize(object.emailAddress,
          specifiedType: const FullType(String)),
      'createdDate',
      serializers.serialize(object.createdDate,
          specifiedType: const FullType(String)),
      'createdBy',
      serializers.serialize(object.createdBy,
          specifiedType: const FullType(String)),
      'lastUpdatedDate',
      serializers.serialize(object.lastUpdatedDate,
          specifiedType: const FullType(String)),
      'transactionResponse',
      serializers.serialize(object.transactionResponse,
          specifiedType: const FullType(TransactionResponse)),
    ];
    if (object.totalAmount != null) {
      result
        ..add('totalAmount')
        ..add(serializers.serialize(object.totalAmount,
            specifiedType: const FullType(double)));
    }
    if (object.paidAmount != null) {
      result
        ..add('paidAmount')
        ..add(serializers.serialize(object.paidAmount,
            specifiedType: const FullType(double)));
    }
    if (object.lastUpdatedBy != null) {
      result
        ..add('lastUpdatedBy')
        ..add(serializers.serialize(object.lastUpdatedBy,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BillPayload deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BillPayloadBuilder();

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
        case 'isPaid':
          result.isPaid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'extraId':
          result.extraId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalAmount':
          result.totalAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'paidAmount':
          result.paidAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'consultationId':
          result.consultationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'patientName':
          result.patientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastUpdatedDate':
          result.lastUpdatedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastUpdatedBy':
          result.lastUpdatedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transactionResponse':
          result.transactionResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransactionResponse))
              as TransactionResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$BillPayload extends BillPayload {
  @override
  final int id;
  @override
  final bool isPaid;
  @override
  final String extraId;
  @override
  final double totalAmount;
  @override
  final double paidAmount;
  @override
  final int consultationId;
  @override
  final int patientId;
  @override
  final bool isActive;
  @override
  final String patientName;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  final String emailAddress;
  @override
  final String createdDate;
  @override
  final String createdBy;
  @override
  final String lastUpdatedDate;
  @override
  final String lastUpdatedBy;
  @override
  final TransactionResponse transactionResponse;

  factory _$BillPayload([void Function(BillPayloadBuilder) updates]) =>
      (new BillPayloadBuilder()..update(updates)).build();

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
      this.transactionResponse})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'id');
    }
    if (isPaid == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'isPaid');
    }
    if (extraId == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'extraId');
    }
    if (consultationId == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'consultationId');
    }
    if (patientId == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'patientId');
    }
    if (isActive == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'isActive');
    }
    if (patientName == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'patientName');
    }
    if (phoneNumber == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'phoneNumber');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'address');
    }
    if (emailAddress == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'emailAddress');
    }
    if (createdDate == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'createdDate');
    }
    if (createdBy == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'createdBy');
    }
    if (lastUpdatedDate == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'lastUpdatedDate');
    }
    if (transactionResponse == null) {
      throw new BuiltValueNullFieldError('BillPayload', 'transactionResponse');
    }
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
    return (newBuiltValueToStringHelper('BillPayload')
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
  _$BillPayload _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _isPaid;
  bool get isPaid => _$this._isPaid;
  set isPaid(bool isPaid) => _$this._isPaid = isPaid;

  String _extraId;
  String get extraId => _$this._extraId;
  set extraId(String extraId) => _$this._extraId = extraId;

  double _totalAmount;
  double get totalAmount => _$this._totalAmount;
  set totalAmount(double totalAmount) => _$this._totalAmount = totalAmount;

  double _paidAmount;
  double get paidAmount => _$this._paidAmount;
  set paidAmount(double paidAmount) => _$this._paidAmount = paidAmount;

  int _consultationId;
  int get consultationId => _$this._consultationId;
  set consultationId(int consultationId) =>
      _$this._consultationId = consultationId;

  int _patientId;
  int get patientId => _$this._patientId;
  set patientId(int patientId) => _$this._patientId = patientId;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  String _patientName;
  String get patientName => _$this._patientName;
  set patientName(String patientName) => _$this._patientName = patientName;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _emailAddress;
  String get emailAddress => _$this._emailAddress;
  set emailAddress(String emailAddress) => _$this._emailAddress = emailAddress;

  String _createdDate;
  String get createdDate => _$this._createdDate;
  set createdDate(String createdDate) => _$this._createdDate = createdDate;

  String _createdBy;
  String get createdBy => _$this._createdBy;
  set createdBy(String createdBy) => _$this._createdBy = createdBy;

  String _lastUpdatedDate;
  String get lastUpdatedDate => _$this._lastUpdatedDate;
  set lastUpdatedDate(String lastUpdatedDate) =>
      _$this._lastUpdatedDate = lastUpdatedDate;

  String _lastUpdatedBy;
  String get lastUpdatedBy => _$this._lastUpdatedBy;
  set lastUpdatedBy(String lastUpdatedBy) =>
      _$this._lastUpdatedBy = lastUpdatedBy;

  TransactionResponseBuilder _transactionResponse;
  TransactionResponseBuilder get transactionResponse =>
      _$this._transactionResponse ??= new TransactionResponseBuilder();
  set transactionResponse(TransactionResponseBuilder transactionResponse) =>
      _$this._transactionResponse = transactionResponse;

  BillPayloadBuilder();

  BillPayloadBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _isPaid = _$v.isPaid;
      _extraId = _$v.extraId;
      _totalAmount = _$v.totalAmount;
      _paidAmount = _$v.paidAmount;
      _consultationId = _$v.consultationId;
      _patientId = _$v.patientId;
      _isActive = _$v.isActive;
      _patientName = _$v.patientName;
      _phoneNumber = _$v.phoneNumber;
      _address = _$v.address;
      _emailAddress = _$v.emailAddress;
      _createdDate = _$v.createdDate;
      _createdBy = _$v.createdBy;
      _lastUpdatedDate = _$v.lastUpdatedDate;
      _lastUpdatedBy = _$v.lastUpdatedBy;
      _transactionResponse = _$v.transactionResponse?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BillPayload other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BillPayload;
  }

  @override
  void update(void Function(BillPayloadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BillPayload build() {
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
      String _$failedField;
      try {
        _$failedField = 'transactionResponse';
        transactionResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BillPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
