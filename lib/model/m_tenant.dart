
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'm_tenant.g.dart';
abstract class Tenant implements Built<Tenant, TenantBuilder> {
  @BuiltValueField(wireName: "tenantId")
  int? get id;
  String ? get name;
  String ? get organization;
  int ? get patientId;
  String ? get status;
  String ? get tenant;

  Tenant._();
  factory Tenant([updates(TenantBuilder b)]) = _$Tenant;

  static Serializer<Tenant> get serializer => _$tenantSerializer;


}