// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_information.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactsInformation> _$contactsInformationSerializer =
    new _$ContactsInformationSerializer();

class _$ContactsInformationSerializer
    implements StructuredSerializer<ContactsInformation> {
  @override
  final Iterable<Type> types = const [
    ContactsInformation,
    _$ContactsInformation
  ];
  @override
  final String wireName = 'ContactsInformation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ContactsInformation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isReachable;
    if (value != null) {
      result
        ..add('isReachable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('email_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zipcode;
    if (value != null) {
      result
        ..add('zipcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.physicalAddress;
    if (value != null) {
      result
        ..add('physical_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.homePhone;
    if (value != null) {
      result
        ..add('home_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workPhone;
    if (value != null) {
      result
        ..add('work_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patient;
    if (value != null) {
      result
        ..add('patient')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ContactsInformation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactsInformationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isReachable':
          result.isReachable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'email_address':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'physical_address':
          result.physicalAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'home_phone':
          result.homePhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'work_phone':
          result.workPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'patient':
          result.patient = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactsInformation extends ContactsInformation {
  @override
  final int? id;
  @override
  final bool? isReachable;
  @override
  final String? emailAddress;
  @override
  final String? zipcode;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? physicalAddress;
  @override
  final String? homePhone;
  @override
  final String? workPhone;
  @override
  final int? patient;

  factory _$ContactsInformation(
          [void Function(ContactsInformationBuilder)? updates]) =>
      (new ContactsInformationBuilder()..update(updates))._build();

  _$ContactsInformation._(
      {this.id,
      this.isReachable,
      this.emailAddress,
      this.zipcode,
      this.city,
      this.state,
      this.physicalAddress,
      this.homePhone,
      this.workPhone,
      this.patient})
      : super._();

  @override
  ContactsInformation rebuild(
          void Function(ContactsInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactsInformationBuilder toBuilder() =>
      new ContactsInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactsInformation &&
        id == other.id &&
        isReachable == other.isReachable &&
        emailAddress == other.emailAddress &&
        zipcode == other.zipcode &&
        city == other.city &&
        state == other.state &&
        physicalAddress == other.physicalAddress &&
        homePhone == other.homePhone &&
        workPhone == other.workPhone &&
        patient == other.patient;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, id.hashCode),
                                        isReachable.hashCode),
                                    emailAddress.hashCode),
                                zipcode.hashCode),
                            city.hashCode),
                        state.hashCode),
                    physicalAddress.hashCode),
                homePhone.hashCode),
            workPhone.hashCode),
        patient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContactsInformation')
          ..add('id', id)
          ..add('isReachable', isReachable)
          ..add('emailAddress', emailAddress)
          ..add('zipcode', zipcode)
          ..add('city', city)
          ..add('state', state)
          ..add('physicalAddress', physicalAddress)
          ..add('homePhone', homePhone)
          ..add('workPhone', workPhone)
          ..add('patient', patient))
        .toString();
  }
}

class ContactsInformationBuilder
    implements Builder<ContactsInformation, ContactsInformationBuilder> {
  _$ContactsInformation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isReachable;
  bool? get isReachable => _$this._isReachable;
  set isReachable(bool? isReachable) => _$this._isReachable = isReachable;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _zipcode;
  String? get zipcode => _$this._zipcode;
  set zipcode(String? zipcode) => _$this._zipcode = zipcode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _physicalAddress;
  String? get physicalAddress => _$this._physicalAddress;
  set physicalAddress(String? physicalAddress) =>
      _$this._physicalAddress = physicalAddress;

  String? _homePhone;
  String? get homePhone => _$this._homePhone;
  set homePhone(String? homePhone) => _$this._homePhone = homePhone;

  String? _workPhone;
  String? get workPhone => _$this._workPhone;
  set workPhone(String? workPhone) => _$this._workPhone = workPhone;

  int? _patient;
  int? get patient => _$this._patient;
  set patient(int? patient) => _$this._patient = patient;

  ContactsInformationBuilder();

  ContactsInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isReachable = $v.isReachable;
      _emailAddress = $v.emailAddress;
      _zipcode = $v.zipcode;
      _city = $v.city;
      _state = $v.state;
      _physicalAddress = $v.physicalAddress;
      _homePhone = $v.homePhone;
      _workPhone = $v.workPhone;
      _patient = $v.patient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactsInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactsInformation;
  }

  @override
  void update(void Function(ContactsInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContactsInformation build() => _build();

  _$ContactsInformation _build() {
    final _$result = _$v ??
        new _$ContactsInformation._(
            id: id,
            isReachable: isReachable,
            emailAddress: emailAddress,
            zipcode: zipcode,
            city: city,
            state: state,
            physicalAddress: physicalAddress,
            homePhone: homePhone,
            workPhone: workPhone,
            patient: patient);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
