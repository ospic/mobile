// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Consultation> _$consultationSerializer =
    new _$ConsultationSerializer();

class _$ConsultationSerializer implements StructuredSerializer<Consultation> {
  @override
  final Iterable<Type> types = const [Consultation, _$Consultation];
  @override
  final String wireName = 'Consultation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Consultation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fromDate;
    if (value != null) {
      result
        ..add('fromDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.toDate;
    if (value != null) {
      result
        ..add('toDate')
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
    value = object.patientId;
    if (value != null) {
      result
        ..add('patientId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.patientName;
    if (value != null) {
      result
        ..add('patientName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.staffId;
    if (value != null) {
      result
        ..add('staffId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.staffName;
    if (value != null) {
      result
        ..add('staffName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Consultation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConsultationBuilder();

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
        case 'fromDate':
          result.fromDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'toDate':
          result.toDate = serializers.deserialize(value,
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
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'patientName':
          result.patientName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'staffId':
          result.staffId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'staffName':
          result.staffName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Consultation extends Consultation {
  @override
  final int? id;
  @override
  final String? fromDate;
  @override
  final String? toDate;
  @override
  final bool? isActive;
  @override
  final bool? isAdmitted;
  @override
  final int? patientId;
  @override
  final String? patientName;
  @override
  final int? staffId;
  @override
  final String? staffName;

  factory _$Consultation([void Function(ConsultationBuilder)? updates]) =>
      (new ConsultationBuilder()..update(updates)).build();

  _$Consultation._(
      {this.id,
      this.fromDate,
      this.toDate,
      this.isActive,
      this.isAdmitted,
      this.patientId,
      this.patientName,
      this.staffId,
      this.staffName})
      : super._();

  @override
  Consultation rebuild(void Function(ConsultationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationBuilder toBuilder() => new ConsultationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Consultation &&
        id == other.id &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        isActive == other.isActive &&
        isAdmitted == other.isAdmitted &&
        patientId == other.patientId &&
        patientName == other.patientName &&
        staffId == other.staffId &&
        staffName == other.staffName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), fromDate.hashCode),
                                toDate.hashCode),
                            isActive.hashCode),
                        isAdmitted.hashCode),
                    patientId.hashCode),
                patientName.hashCode),
            staffId.hashCode),
        staffName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Consultation')
          ..add('id', id)
          ..add('fromDate', fromDate)
          ..add('toDate', toDate)
          ..add('isActive', isActive)
          ..add('isAdmitted', isAdmitted)
          ..add('patientId', patientId)
          ..add('patientName', patientName)
          ..add('staffId', staffId)
          ..add('staffName', staffName))
        .toString();
  }
}

class ConsultationBuilder
    implements Builder<Consultation, ConsultationBuilder> {
  _$Consultation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fromDate;
  String? get fromDate => _$this._fromDate;
  set fromDate(String? fromDate) => _$this._fromDate = fromDate;

  String? _toDate;
  String? get toDate => _$this._toDate;
  set toDate(String? toDate) => _$this._toDate = toDate;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isAdmitted;
  bool? get isAdmitted => _$this._isAdmitted;
  set isAdmitted(bool? isAdmitted) => _$this._isAdmitted = isAdmitted;

  int? _patientId;
  int? get patientId => _$this._patientId;
  set patientId(int? patientId) => _$this._patientId = patientId;

  String? _patientName;
  String? get patientName => _$this._patientName;
  set patientName(String? patientName) => _$this._patientName = patientName;

  int? _staffId;
  int? get staffId => _$this._staffId;
  set staffId(int? staffId) => _$this._staffId = staffId;

  String? _staffName;
  String? get staffName => _$this._staffName;
  set staffName(String? staffName) => _$this._staffName = staffName;

  ConsultationBuilder();

  ConsultationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fromDate = $v.fromDate;
      _toDate = $v.toDate;
      _isActive = $v.isActive;
      _isAdmitted = $v.isAdmitted;
      _patientId = $v.patientId;
      _patientName = $v.patientName;
      _staffId = $v.staffId;
      _staffName = $v.staffName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Consultation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Consultation;
  }

  @override
  void update(void Function(ConsultationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Consultation build() {
    final _$result = _$v ??
        new _$Consultation._(
            id: id,
            fromDate: fromDate,
            toDate: toDate,
            isActive: isActive,
            isAdmitted: isAdmitted,
            patientId: patientId,
            patientName: patientName,
            staffId: staffId,
            staffName: staffName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
