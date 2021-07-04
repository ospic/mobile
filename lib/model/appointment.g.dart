// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Appointment> _$appointmentSerializer = new _$AppointmentSerializer();

class _$AppointmentSerializer implements StructuredSerializer<Appointment> {
  @override
  final Iterable<Type> types = const [Appointment, _$Appointment];
  @override
  final String wireName = 'Appointment';

  @override
  Iterable<Object?> serialize(Serializers serializers, Appointment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'appointment',
      serializers.serialize(object.appointment,
          specifiedType: const FullType(AppointmentInfo)),
      'staff',
      serializers.serialize(object.staff, specifiedType: const FullType(Staff)),
    ];
    Object? value;
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Appointment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'appointment':
          result.appointment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AppointmentInfo))!
              as AppointmentInfo);
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

class _$Appointment extends Appointment {
  @override
  final bool? success;
  @override
  final AppointmentInfo appointment;
  @override
  final Staff staff;

  factory _$Appointment([void Function(AppointmentBuilder)? updates]) =>
      (new AppointmentBuilder()..update(updates)).build();

  _$Appointment._(
      {this.success, required this.appointment, required this.staff})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appointment, 'Appointment', 'appointment');
    BuiltValueNullFieldError.checkNotNull(staff, 'Appointment', 'staff');
  }

  @override
  Appointment rebuild(void Function(AppointmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentBuilder toBuilder() => new AppointmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appointment &&
        success == other.success &&
        appointment == other.appointment &&
        staff == other.staff;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, success.hashCode), appointment.hashCode), staff.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Appointment')
          ..add('success', success)
          ..add('appointment', appointment)
          ..add('staff', staff))
        .toString();
  }
}

class AppointmentBuilder implements Builder<Appointment, AppointmentBuilder> {
  _$Appointment? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  AppointmentInfoBuilder? _appointment;
  AppointmentInfoBuilder get appointment =>
      _$this._appointment ??= new AppointmentInfoBuilder();
  set appointment(AppointmentInfoBuilder? appointment) =>
      _$this._appointment = appointment;

  StaffBuilder? _staff;
  StaffBuilder get staff => _$this._staff ??= new StaffBuilder();
  set staff(StaffBuilder? staff) => _$this._staff = staff;

  AppointmentBuilder();

  AppointmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _appointment = $v.appointment.toBuilder();
      _staff = $v.staff.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Appointment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Appointment;
  }

  @override
  void update(void Function(AppointmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Appointment build() {
    _$Appointment _$result;
    try {
      _$result = _$v ??
          new _$Appointment._(
              success: success,
              appointment: appointment.build(),
              staff: staff.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appointment';
        appointment.build();
        _$failedField = 'staff';
        staff.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Appointment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
