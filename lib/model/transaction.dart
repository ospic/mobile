import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction.g.dart';

abstract class Transaction implements Built<Transaction, TransactionBuilder>{

  int get id;
  double ? get  amount;
  String ? get  currencyCode;
  bool ? get isReversed;
  String ? get  transactionDate;
  int ? get consultationId;
  int ? get departmentId;
  String ? get departmentName;
  int  get medicalServiceId;
  String  get medicalServiceName;
  int  get  medicineId;
  String  get medicineName;

  Transaction._();
  factory Transaction([updates(TransactionBuilder b)]) = _$Transaction;
  static Serializer<Transaction> get serializer => _$transactionSerializer;

}