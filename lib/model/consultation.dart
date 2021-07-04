import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'consultation.g.dart';
abstract class Consultation implements Built<Consultation , ConsultationBuilder> {
  int? get id;
  String? get fromDate;
  String? get toDate;
  bool? get isActive;
  bool? get isAdmitted;
  int? get patientId;
  String? get patientName;
  int? get staffId;
  String? get staffName;

  Consultation._();
  factory Consultation([updates(ConsultationBuilder b)]) = _$Consultation ;

  static Serializer<Consultation > get serializer => _$consultationSerializer;
}