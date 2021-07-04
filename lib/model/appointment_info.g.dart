// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppointmentInfo> _$appointmentInfoSerializer =
    new _$AppointmentInfoSerializer();

class _$AppointmentInfoSerializer
    implements StructuredSerializer<AppointmentInfo> {
  @override
  final Iterable<Type> types = const [AppointmentInfo, _$AppointmentInfo];
  @override
  final String wireName = 'AppointmentInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppointmentInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.job;
    if (value != null) {
      result
        ..add('job')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trigger;
    if (value != null) {
      result
        ..add('trigger')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppointmentInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentInfoBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'job':
          result.job = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'trigger':
          result.trigger = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentInfo extends AppointmentInfo {
  @override
  final int? id;
  @override
  final int? patientId;
  @override
  final int? physicianId;
  @override
  final String? appointmentDate;
  @override
  final String? status;
  @override
  final String? job;
  @override
  final String? trigger;

  factory _$AppointmentInfo([void Function(AppointmentInfoBuilder)? updates]) =>
      (new AppointmentInfoBuilder()..update(updates)).build();

  _$AppointmentInfo._(
      {this.id,
      this.patientId,
      this.physicianId,
      this.appointmentDate,
      this.status,
      this.job,
      this.trigger})
      : super._();

  @override
  AppointmentInfo rebuild(void Function(AppointmentInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentInfoBuilder toBuilder() =>
      new AppointmentInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentInfo &&
        id == other.id &&
        patientId == other.patientId &&
        physicianId == other.physicianId &&
        appointmentDate == other.appointmentDate &&
        status == other.status &&
        job == other.job &&
        trigger == other.trigger;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), patientId.hashCode),
                        physicianId.hashCode),
                    appointmentDate.hashCode),
                status.hashCode),
            job.hashCode),
        trigger.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppointmentInfo')
          ..add('id', id)
          ..add('patientId', patientId)
          ..add('physicianId', physicianId)
          ..add('appointmentDate', appointmentDate)
          ..add('status', status)
          ..add('job', job)
          ..add('trigger', trigger))
        .toString();
  }
}

class AppointmentInfoBuilder
    implements Builder<AppointmentInfo, AppointmentInfoBuilder> {
  _$AppointmentInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _job;
  String? get job => _$this._job;
  set job(String? job) => _$this._job = job;

  String? _trigger;
  String? get trigger => _$this._trigger;
  set trigger(String? trigger) => _$this._trigger = trigger;

  AppointmentInfoBuilder();

  AppointmentInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _patientId = $v.patientId;
      _physicianId = $v.physicianId;
      _appointmentDate = $v.appointmentDate;
      _status = $v.status;
      _job = $v.job;
      _trigger = $v.trigger;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentInfo;
  }

  @override
  void update(void Function(AppointmentInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppointmentInfo build() {
    final _$result = _$v ??
        new _$AppointmentInfo._(
            id: id,
            patientId: patientId,
            physicianId: physicianId,
            appointmentDate: appointmentDate,
            status: status,
            job: job,
            trigger: trigger);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
