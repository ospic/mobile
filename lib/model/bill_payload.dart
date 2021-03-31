import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'transaction_response.dart';
part 'bill_payload.g.dart';

abstract class BillPayload implements Built<BillPayload, BillPayloadBuilder> {
  int get id;
  bool get isPaid;
  String get  extraId;
  @nullable double get totalAmount;
  @nullable double get paidAmount;
  int get consultationId;
  int get patientId;
  bool get isActive;
  String get patientName;
  String get  phoneNumber;
  String get  address;
  String get  emailAddress;
  String get createdDate;
  String get  createdBy;
  String get  lastUpdatedDate;
  @nullable String get  lastUpdatedBy;
  @BuiltValueField(wireName: "transactionResponse")
  TransactionResponse get  transactionResponse;

  BillPayload._();

  factory BillPayload([updates(BillPayloadBuilder b)]) = _$BillPayload;

  static Serializer<BillPayload> get serializer => _$billPayloadSerializer;
}
