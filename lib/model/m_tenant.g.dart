// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_tenant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tenant> _$tenantSerializer = new _$TenantSerializer();

class _$TenantSerializer implements StructuredSerializer<Tenant> {
  @override
  final Iterable<Type> types = const [Tenant, _$Tenant];
  @override
  final String wireName = 'Tenant';

  @override
  Iterable<Object?> serialize(Serializers serializers, Tenant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('tenantId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organization;
    if (value != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientId;
    if (value != null) {
      result
        ..add('patientId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tenant;
    if (value != null) {
      result
        ..add('tenant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Tenant deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TenantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tenantId':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organization':
          result.organization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tenant':
          result.tenant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Tenant extends Tenant {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? organization;
  @override
  final int? patientId;
  @override
  final String? status;
  @override
  final String? tenant;

  factory _$Tenant([void Function(TenantBuilder)? updates]) =>
      (new TenantBuilder()..update(updates))._build();

  _$Tenant._(
      {this.id,
      this.name,
      this.organization,
      this.patientId,
      this.status,
      this.tenant})
      : super._();

  @override
  Tenant rebuild(void Function(TenantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantBuilder toBuilder() => new TenantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tenant &&
        id == other.id &&
        name == other.name &&
        organization == other.organization &&
        patientId == other.patientId &&
        status == other.status &&
        tenant == other.tenant;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), name.hashCode),
                    organization.hashCode),
                patientId.hashCode),
            status.hashCode),
        tenant.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tenant')
          ..add('id', id)
          ..add('name', name)
          ..add('organization', organization)
          ..add('patientId', patientId)
          ..add('status', status)
          ..add('tenant', tenant))
        .toString();
  }
}

class TenantBuilder implements Builder<Tenant, TenantBuilder> {
  _$Tenant? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _organization;
  String? get organization => _$this._organization;
  set organization(String? organization) => _$this._organization = organization;

  int? _patientId;
  int? get patientId => _$this._patientId;
  set patientId(int? patientId) => _$this._patientId = patientId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _tenant;
  String? get tenant => _$this._tenant;
  set tenant(String? tenant) => _$this._tenant = tenant;

  TenantBuilder();

  TenantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _organization = $v.organization;
      _patientId = $v.patientId;
      _status = $v.status;
      _tenant = $v.tenant;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tenant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tenant;
  }

  @override
  void update(void Function(TenantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tenant build() => _build();

  _$Tenant _build() {
    final _$result = _$v ??
        new _$Tenant._(
            id: id,
            name: name,
            organization: organization,
            patientId: patientId,
            status: status,
            tenant: tenant);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
