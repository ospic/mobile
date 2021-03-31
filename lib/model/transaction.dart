import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction.g.dart';

abstract class Transaction implements Built<Transaction, TransactionBuilder>{

  int get id;
  @nullable double get  amount;
  @nullable  String get  currencyCode;
  @nullable bool get isReversed;
  @nullable String get  transactionDate;
  @nullable int get consultationId;
  @nullable int get departmentId;
  @nullable  String get departmentName;
  @nullable int get medicalServiceId;
  @nullable String get medicalServiceName;
  @nullable int get  medicineId;
 @nullable String get medicineName;

  Transaction._();
  factory Transaction([updates(TransactionBuilder b)]) = _$Transaction;
  static Serializer<Transaction> get serializer => _$transactionSerializer;

}