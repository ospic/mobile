// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionResponse> _$transactionResponseSerializer =
    new _$TransactionResponseSerializer();

class _$TransactionResponseSerializer
    implements StructuredSerializer<TransactionResponse> {
  @override
  final Iterable<Type> types = const [
    TransactionResponse,
    _$TransactionResponse
  ];
  @override
  final String wireName = 'TransactionResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TransactionResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'transactions',
      serializers.serialize(object.transactions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Transaction)])),
    ];
    if (object.totalAmount != null) {
      result
        ..add('totalAmount')
        ..add(serializers.serialize(object.totalAmount,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  TransactionResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'totalAmount':
          result.totalAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'transactions':
          result.transactions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Transaction)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionResponse extends TransactionResponse {
  @override
  final double totalAmount;
  @override
  final BuiltList<Transaction> transactions;

  factory _$TransactionResponse(
          [void Function(TransactionResponseBuilder) updates]) =>
      (new TransactionResponseBuilder()..update(updates)).build();

  _$TransactionResponse._({this.totalAmount, this.transactions}) : super._() {
    if (transactions == null) {
      throw new BuiltValueNullFieldError('TransactionResponse', 'transactions');
    }
  }

  @override
  TransactionResponse rebuild(
          void Function(TransactionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionResponseBuilder toBuilder() =>
      new TransactionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionResponse &&
        totalAmount == other.totalAmount &&
        transactions == other.transactions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, totalAmount.hashCode), transactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionResponse')
          ..add('totalAmount', totalAmount)
          ..add('transactions', transactions))
        .toString();
  }
}

class TransactionResponseBuilder
    implements Builder<TransactionResponse, TransactionResponseBuilder> {
  _$TransactionResponse _$v;

  double _totalAmount;
  double get totalAmount => _$this._totalAmount;
  set totalAmount(double totalAmount) => _$this._totalAmount = totalAmount;

  ListBuilder<Transaction> _transactions;
  ListBuilder<Transaction> get transactions =>
      _$this._transactions ??= new ListBuilder<Transaction>();
  set transactions(ListBuilder<Transaction> transactions) =>
      _$this._transactions = transactions;

  TransactionResponseBuilder();

  TransactionResponseBuilder get _$this {
    if (_$v != null) {
      _totalAmount = _$v.totalAmount;
      _transactions = _$v.transactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TransactionResponse;
  }

  @override
  void update(void Function(TransactionResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionResponse build() {
    _$TransactionResponse _$result;
    try {
      _$result = _$v ??
          new _$TransactionResponse._(
              totalAmount: totalAmount, transactions: transactions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'transactions';
        transactions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
