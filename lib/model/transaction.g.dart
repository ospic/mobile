// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Transaction> _$transactionSerializer = new _$TransactionSerializer();

class _$TransactionSerializer implements StructuredSerializer<Transaction> {
  @override
  final Iterable<Type> types = const [Transaction, _$Transaction];
  @override
  final String wireName = 'Transaction';

  @override
  Iterable<Object?> serialize(Serializers serializers, Transaction object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currencyCode;
    if (value != null) {
      result
        ..add('currencyCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isReversed;
    if (value != null) {
      result
        ..add('isReversed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.transactionDate;
    if (value != null) {
      result
        ..add('transactionDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.consultationId;
    if (value != null) {
      result
        ..add('consultationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.departmentId;
    if (value != null) {
      result
        ..add('departmentId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.departmentName;
    if (value != null) {
      result
        ..add('departmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medicalServiceId;
    if (value != null) {
      result
        ..add('medicalServiceId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.medicalServiceName;
    if (value != null) {
      result
        ..add('medicalServiceName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medicineId;
    if (value != null) {
      result
        ..add('medicineId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.medicineName;
    if (value != null) {
      result
        ..add('medicineName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Transaction deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'currencyCode':
          result.currencyCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isReversed':
          result.isReversed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'transactionDate':
          result.transactionDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'consultationId':
          result.consultationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'departmentId':
          result.departmentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'departmentName':
          result.departmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medicalServiceId':
          result.medicalServiceId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'medicalServiceName':
          result.medicalServiceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medicineId':
          result.medicineId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'medicineName':
          result.medicineName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Transaction extends Transaction {
  @override
  final int id;
  @override
  final double? amount;
  @override
  final String? currencyCode;
  @override
  final bool? isReversed;
  @override
  final String? transactionDate;
  @override
  final int? consultationId;
  @override
  final int? departmentId;
  @override
  final String? departmentName;
  @override
  final int? medicalServiceId;
  @override
  final String? medicalServiceName;
  @override
  final int? medicineId;
  @override
  final String? medicineName;

  factory _$Transaction([void Function(TransactionBuilder)? updates]) =>
      (new TransactionBuilder()..update(updates)).build();

  _$Transaction._(
      {required this.id,
      this.amount,
      this.currencyCode,
      this.isReversed,
      this.transactionDate,
      this.consultationId,
      this.departmentId,
      this.departmentName,
      this.medicalServiceId,
      this.medicalServiceName,
      this.medicineId,
      this.medicineName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Transaction', 'id');
  }

  @override
  Transaction rebuild(void Function(TransactionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionBuilder toBuilder() => new TransactionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Transaction &&
        id == other.id &&
        amount == other.amount &&
        currencyCode == other.currencyCode &&
        isReversed == other.isReversed &&
        transactionDate == other.transactionDate &&
        consultationId == other.consultationId &&
        departmentId == other.departmentId &&
        departmentName == other.departmentName &&
        medicalServiceId == other.medicalServiceId &&
        medicalServiceName == other.medicalServiceName &&
        medicineId == other.medicineId &&
        medicineName == other.medicineName;
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
                                                amount.hashCode),
                                            currencyCode.hashCode),
                                        isReversed.hashCode),
                                    transactionDate.hashCode),
                                consultationId.hashCode),
                            departmentId.hashCode),
                        departmentName.hashCode),
                    medicalServiceId.hashCode),
                medicalServiceName.hashCode),
            medicineId.hashCode),
        medicineName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Transaction')
          ..add('id', id)
          ..add('amount', amount)
          ..add('currencyCode', currencyCode)
          ..add('isReversed', isReversed)
          ..add('transactionDate', transactionDate)
          ..add('consultationId', consultationId)
          ..add('departmentId', departmentId)
          ..add('departmentName', departmentName)
          ..add('medicalServiceId', medicalServiceId)
          ..add('medicalServiceName', medicalServiceName)
          ..add('medicineId', medicineId)
          ..add('medicineName', medicineName))
        .toString();
  }
}

class TransactionBuilder implements Builder<Transaction, TransactionBuilder> {
  _$Transaction? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _currencyCode;
  String? get currencyCode => _$this._currencyCode;
  set currencyCode(String? currencyCode) => _$this._currencyCode = currencyCode;

  bool? _isReversed;
  bool? get isReversed => _$this._isReversed;
  set isReversed(bool? isReversed) => _$this._isReversed = isReversed;

  String? _transactionDate;
  String? get transactionDate => _$this._transactionDate;
  set transactionDate(String? transactionDate) =>
      _$this._transactionDate = transactionDate;

  int? _consultationId;
  int? get consultationId => _$this._consultationId;
  set consultationId(int? consultationId) =>
      _$this._consultationId = consultationId;

  int? _departmentId;
  int? get departmentId => _$this._departmentId;
  set departmentId(int? departmentId) => _$this._departmentId = departmentId;

  String? _departmentName;
  String? get departmentName => _$this._departmentName;
  set departmentName(String? departmentName) =>
      _$this._departmentName = departmentName;

  int? _medicalServiceId;
  int? get medicalServiceId => _$this._medicalServiceId;
  set medicalServiceId(int? medicalServiceId) =>
      _$this._medicalServiceId = medicalServiceId;

  String? _medicalServiceName;
  String? get medicalServiceName => _$this._medicalServiceName;
  set medicalServiceName(String? medicalServiceName) =>
      _$this._medicalServiceName = medicalServiceName;

  int? _medicineId;
  int? get medicineId => _$this._medicineId;
  set medicineId(int? medicineId) => _$this._medicineId = medicineId;

  String? _medicineName;
  String? get medicineName => _$this._medicineName;
  set medicineName(String? medicineName) => _$this._medicineName = medicineName;

  TransactionBuilder();

  TransactionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _amount = $v.amount;
      _currencyCode = $v.currencyCode;
      _isReversed = $v.isReversed;
      _transactionDate = $v.transactionDate;
      _consultationId = $v.consultationId;
      _departmentId = $v.departmentId;
      _departmentName = $v.departmentName;
      _medicalServiceId = $v.medicalServiceId;
      _medicalServiceName = $v.medicalServiceName;
      _medicineId = $v.medicineId;
      _medicineName = $v.medicineName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Transaction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Transaction;
  }

  @override
  void update(void Function(TransactionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Transaction build() {
    final _$result = _$v ??
        new _$Transaction._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Transaction', 'id'),
            amount: amount,
            currencyCode: currencyCode,
            isReversed: isReversed,
            transactionDate: transactionDate,
            consultationId: consultationId,
            departmentId: departmentId,
            departmentName: departmentName,
            medicalServiceId: medicalServiceId,
            medicalServiceName: medicalServiceName,
            medicineId: medicineId,
            medicineName: medicineName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
