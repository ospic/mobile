// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConsultationPayload> _$consultationPayloadSerializer =
    new _$ConsultationPayloadSerializer();

class _$ConsultationPayloadSerializer
    implements StructuredSerializer<ConsultationPayload> {
  @override
  final Iterable<Type> types = const [
    ConsultationPayload,
    _$ConsultationPayload
  ];
  @override
  final String wireName = 'ConsultationPayload';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConsultationPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fromdate;
    if (value != null) {
      result
        ..add('fromdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.todate;
    if (value != null) {
      result
        ..add('todate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAdmitted;
    if (value != null) {
      result
        ..add('isAdmitted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.patient;
    if (value != null) {
      result
        ..add('patient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Patient)));
    }
    value = object.staff;
    if (value != null) {
      result
        ..add('staff')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Staff)));
    }
    return result;
  }

  @override
  ConsultationPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConsultationPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fromdate':
          result.fromdate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'todate':
          result.todate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isAdmitted':
          result.isAdmitted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'patient':
          result.patient.replace(serializers.deserialize(value,
              specifiedType: const FullType(Patient))! as Patient);
          break;
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
              specifiedType: const FullType(Staff))! as Staff);
          break;
      }
    }

    return result.build();
  }
}

class _$ConsultationPayload extends ConsultationPayload {
  @override
  final int? id;
  @override
  final String? fromdate;
  @override
  final String? todate;
  @override
  final bool? isActive;
  @override
  final bool? isAdmitted;
  @override
  final Patient? patient;
  @override
  final Staff? staff;

  factory _$ConsultationPayload(
          [void Function(ConsultationPayloadBuilder)? updates]) =>
      (new ConsultationPayloadBuilder()..update(updates)).build();

  _$ConsultationPayload._(
      {this.id,
      this.fromdate,
      this.todate,
      this.isActive,
      this.isAdmitted,
      this.patient,
      this.staff})
      : super._();

  @override
  ConsultationPayload rebuild(
          void Function(ConsultationPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationPayloadBuilder toBuilder() =>
      new ConsultationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationPayload &&
        id == other.id &&
        fromdate == other.fromdate &&
        todate == other.todate &&
        isActive == other.isActive &&
        isAdmitted == other.isAdmitted &&
        patient == other.patient &&
        staff == other.staff;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), fromdate.hashCode),
                        todate.hashCode),
                    isActive.hashCode),
                isAdmitted.hashCode),
            patient.hashCode),
        staff.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConsultationPayload')
          ..add('id', id)
          ..add('fromdate', fromdate)
          ..add('todate', todate)
          ..add('isActive', isActive)
          ..add('isAdmitted', isAdmitted)
          ..add('patient', patient)
          ..add('staff', staff))
        .toString();
  }
}

class ConsultationPayloadBuilder
    implements Builder<ConsultationPayload, ConsultationPayloadBuilder> {
  _$ConsultationPayload? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fromdate;
  String? get fromdate => _$this._fromdate;
  set fromdate(String? fromdate) => _$this._fromdate = fromdate;

  String? _todate;
  String? get todate => _$this._todate;
  set todate(String? todate) => _$this._todate = todate;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isAdmitted;
  bool? get isAdmitted => _$this._isAdmitted;
  set isAdmitted(bool? isAdmitted) => _$this._isAdmitted = isAdmitted;

  PatientBuilder? _patient;
  PatientBuilder get patient => _$this._patient ??= new PatientBuilder();
  set patient(PatientBuilder? patient) => _$this._patient = patient;

  StaffBuilder? _staff;
  StaffBuilder get staff => _$this._staff ??= new StaffBuilder();
  set staff(StaffBuilder? staff) => _$this._staff = staff;

  ConsultationPayloadBuilder();

  ConsultationPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fromdate = $v.fromdate;
      _todate = $v.todate;
      _isActive = $v.isActive;
      _isAdmitted = $v.isAdmitted;
      _patient = $v.patient?.toBuilder();
      _staff = $v.staff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsultationPayload;
  }

  @override
  void update(void Function(ConsultationPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConsultationPayload build() {
    _$ConsultationPayload _$result;
    try {
      _$result = _$v ??
          new _$ConsultationPayload._(
              id: id,
              fromdate: fromdate,
              todate: todate,
              isActive: isActive,
              isAdmitted: isAdmitted,
              patient: _patient?.build(),
              staff: _staff?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patient';
        _patient?.build();
        _$failedField = 'staff';
        _staff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConsultationPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
