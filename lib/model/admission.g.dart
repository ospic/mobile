// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Admission> _$admissionSerializer = new _$AdmissionSerializer();

class _$AdmissionSerializer implements StructuredSerializer<Admission> {
  @override
  final Iterable<Type> types = const [Admission, _$Admission];
  @override
  final String wireName = 'Admission';

  @override
  Iterable<Object> serialize(Serializers serializers, Admission object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.startDate != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(object.startDate,
            specifiedType: const FullType(String)));
    }
    if (object.endDate != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(object.endDate,
            specifiedType: const FullType(String)));
    }
    if (object.isActive != null) {
      result
        ..add('isActive')
        ..add(serializers.serialize(object.isActive,
            specifiedType: const FullType(bool)));
    }
    if (object.wardId != null) {
      result
        ..add('wardId')
        ..add(serializers.serialize(object.wardId,
            specifiedType: const FullType(int)));
    }
    if (object.bedId != null) {
      result
        ..add('bedId')
        ..add(serializers.serialize(object.bedId,
            specifiedType: const FullType(int)));
    }
    if (object.bedIdentifier != null) {
      result
        ..add('bedIdentifier')
        ..add(serializers.serialize(object.bedIdentifier,
            specifiedType: const FullType(String)));
    }
    if (object.wardName != null) {
      result
        ..add('wardName')
        ..add(serializers.serialize(object.wardName,
            specifiedType: const FullType(String)));
    }
    if (object.serviceId != null) {
      result
        ..add('serviceId')
        ..add(serializers.serialize(object.serviceId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Admission deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdmissionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'wardId':
          result.wardId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'bedId':
          result.bedId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'bedIdentifier':
          result.bedIdentifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wardName':
          result.wardName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceId':
          result.serviceId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Admission extends Admission {
  @override
  final int id;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final bool isActive;
  @override
  final int wardId;
  @override
  final int bedId;
  @override
  final String bedIdentifier;
  @override
  final String wardName;
  @override
  final int serviceId;

  factory _$Admission([void Function(AdmissionBuilder) updates]) =>
      (new AdmissionBuilder()..update(updates)).build();

  _$Admission._(
      {this.id,
      this.startDate,
      this.endDate,
      this.isActive,
      this.wardId,
      this.bedId,
      this.bedIdentifier,
      this.wardName,
      this.serviceId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Admission', 'id');
    }
  }

  @override
  Admission rebuild(void Function(AdmissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdmissionBuilder toBuilder() => new AdmissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Admission &&
        id == other.id &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        isActive == other.isActive &&
        wardId == other.wardId &&
        bedId == other.bedId &&
        bedIdentifier == other.bedIdentifier &&
        wardName == other.wardName &&
        serviceId == other.serviceId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), startDate.hashCode),
                                endDate.hashCode),
                            isActive.hashCode),
                        wardId.hashCode),
                    bedId.hashCode),
                bedIdentifier.hashCode),
            wardName.hashCode),
        serviceId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Admission')
          ..add('id', id)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('isActive', isActive)
          ..add('wardId', wardId)
          ..add('bedId', bedId)
          ..add('bedIdentifier', bedIdentifier)
          ..add('wardName', wardName)
          ..add('serviceId', serviceId))
        .toString();
  }
}

class AdmissionBuilder implements Builder<Admission, AdmissionBuilder> {
  _$Admission _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _startDate;
  String get startDate => _$this._startDate;
  set startDate(String startDate) => _$this._startDate = startDate;

  String _endDate;
  String get endDate => _$this._endDate;
  set endDate(String endDate) => _$this._endDate = endDate;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  int _wardId;
  int get wardId => _$this._wardId;
  set wardId(int wardId) => _$this._wardId = wardId;

  int _bedId;
  int get bedId => _$this._bedId;
  set bedId(int bedId) => _$this._bedId = bedId;

  String _bedIdentifier;
  String get bedIdentifier => _$this._bedIdentifier;
  set bedIdentifier(String bedIdentifier) =>
      _$this._bedIdentifier = bedIdentifier;

  String _wardName;
  String get wardName => _$this._wardName;
  set wardName(String wardName) => _$this._wardName = wardName;

  int _serviceId;
  int get serviceId => _$this._serviceId;
  set serviceId(int serviceId) => _$this._serviceId = serviceId;

  AdmissionBuilder();

  AdmissionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _startDate = _$v.startDate;
      _endDate = _$v.endDate;
      _isActive = _$v.isActive;
      _wardId = _$v.wardId;
      _bedId = _$v.bedId;
      _bedIdentifier = _$v.bedIdentifier;
      _wardName = _$v.wardName;
      _serviceId = _$v.serviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Admission other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Admission;
  }

  @override
  void update(void Function(AdmissionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Admission build() {
    final _$result = _$v ??
        new _$Admission._(
            id: id,
            startDate: startDate,
            endDate: endDate,
            isActive: isActive,
            wardId: wardId,
            bedId: bedId,
            bedIdentifier: bedIdentifier,
            wardName: wardName,
            serviceId: serviceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
