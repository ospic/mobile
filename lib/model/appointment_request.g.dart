// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppointmentRequest> _$appointmentRequestSerializer =
    new _$AppointmentRequestSerializer();

class _$AppointmentRequestSerializer
    implements StructuredSerializer<AppointmentRequest> {
  @override
  final Iterable<Type> types = const [AppointmentRequest, _$AppointmentRequest];
  @override
  final String wireName = 'AppointmentRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppointmentRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.patientId;
    if (value != null) {
      result
        ..add('patientId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.physicianId;
    if (value != null) {
      result
        ..add('physicianId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.appointmentDate;
    if (value != null) {
      result
        ..add('appointmentDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeZone;
    if (value != null) {
      result
        ..add('timeZone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppointmentRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'physicianId':
          result.physicianId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'appointmentDate':
          result.appointmentDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timeZone':
          result.timeZone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentRequest extends AppointmentRequest {
  @override
  final int? patientId;
  @override
  final int? physicianId;
  @override
  final String? appointmentDate;
  @override
  final String? timeZone;

  factory _$AppointmentRequest(
          [void Function(AppointmentRequestBuilder)? updates]) =>
      (new AppointmentRequestBuilder()..update(updates)).build();

  _$AppointmentRequest._(
      {this.patientId, this.physicianId, this.appointmentDate, this.timeZone})
      : super._();

  @override
  AppointmentRequest rebuild(
          void Function(AppointmentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentRequestBuilder toBuilder() =>
      new AppointmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentRequest &&
        patientId == other.patientId &&
        physicianId == other.physicianId &&
        appointmentDate == other.appointmentDate &&
        timeZone == other.timeZone;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, patientId.hashCode), physicianId.hashCode),
            appointmentDate.hashCode),
        timeZone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppointmentRequest')
          ..add('patientId', patientId)
          ..add('physicianId', physicianId)
          ..add('appointmentDate', appointmentDate)
          ..add('timeZone', timeZone))
        .toString();
  }
}

class AppointmentRequestBuilder
    implements Builder<AppointmentRequest, AppointmentRequestBuilder> {
  _$AppointmentRequest? _$v;

  int? _patientId;
  int? get patientId => _$this._patientId;
  set patientId(int? patientId) => _$this._patientId = patientId;

  int? _physicianId;
  int? get physicianId => _$this._physicianId;
  set physicianId(int? physicianId) => _$this._physicianId = physicianId;

  String? _appointmentDate;
  String? get appointmentDate => _$this._appointmentDate;
  set appointmentDate(String? appointmentDate) =>
      _$this._appointmentDate = appointmentDate;

  String? _timeZone;
  String? get timeZone => _$this._timeZone;
  set timeZone(String? timeZone) => _$this._timeZone = timeZone;

  AppointmentRequestBuilder();

  AppointmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _physicianId = $v.physicianId;
      _appointmentDate = $v.appointmentDate;
      _timeZone = $v.timeZone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentRequest;
  }

  @override
  void update(void Function(AppointmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppointmentRequest build() {
    final _$result = _$v ??
        new _$AppointmentRequest._(
            patientId: patientId,
            physicianId: physicianId,
            appointmentDate: appointmentDate,
            timeZone: timeZone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
