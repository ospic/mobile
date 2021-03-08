import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'consultation.g.dart';
abstract class Consultation implements Built<Consultation , ConsultationBuilder> {
  @nullable int get id;
  @nullable String get fromDate;
  @nullable String get toDate;
  @nullable bool get isActive;
  @nullable bool get isAdmitted;
  @nullable int get patientId;
  @nullable String get patientName;
  @nullable int get staffId;
  @nullable String get staffName;

  Consultation._();
  factory Consultation([updates(ConsultationBuilder b)]) = _$Consultation ;

  static Serializer<Consultation > get serializer => _$consultationSerializer;
}