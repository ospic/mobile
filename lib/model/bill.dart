import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bill.g.dart';

abstract class Bill implements Built<Bill, BillBuilder> {
  int? get id;
  bool? get isPaid;
  String? get  extraId;
   double? get totalAmount;
   double? get paidAmount;
  int? get consultationId;
  int? get patientId;
  bool? get isActive;
  String? get patientName;
  String? get  phoneNumber;
  String? get  address;
  String? get  emailAddress;
  String? get createdDate;
  String? get  createdBy;
  String? get  lastUpdatedDate;
  String? get  lastUpdatedBy;
  String? get  transactionResponse;

  Bill._();

  factory Bill([updates(BillBuilder b)]) = _$Bill;

  static Serializer<Bill> get serializer => _$billSerializer;
}
