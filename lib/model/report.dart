import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'report.g.dart';
abstract class Report implements Built<Report, ReportBuilder>{
  int get id;
  @nullable String get name;
  @nullable String get url;
  @nullable String get location;
  @nullable String get type;
  @nullable String get size;
  

  Report._();
  factory Report([updates(ReportBuilder b)]) = _$Report;
  static Serializer<Report> get serializer => _$reportSerializer;
}