import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/model/transaction.dart';
import 'package:built_collection/built_collection.dart';


part 'transaction_response.g.dart';

abstract class TransactionResponse implements Built<TransactionResponse, TransactionResponseBuilder>{
  double ? get totalAmount;
  @BuiltValueField(wireName: "transactions")
  BuiltList<Transaction> get transactions;

  TransactionResponse._();
  factory TransactionResponse([updates(TransactionResponseBuilder b)]) = _$TransactionResponse;
  static Serializer<TransactionResponse> get serializer => _$transactionResponseSerializer;

}