import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'report.g.dart';
abstract class Report implements Built<Report, ReportBuilder>{
  int get id;
  String ? get name;
  String ? get url;
  String ? get location;
  String ? get type;
  String ? get size;
  

  Report._();
  factory Report([updates(ReportBuilder b)]) = _$Report;
  static Serializer<Report> get serializer => _$reportSerializer;
}