// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_information.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContactsInformation extends ContactsInformation {
  @override
  final int id;
  @override
  final bool isReachable;
  @override
  final String email_address;
  @override
  final String zipcode;
  @override
  final String city;
  @override
  final String state;
  @override
  final String physical_address;
  @override
  final String home_phone;
  @override
  final String work_phone;
  @override
  final int patient;

  factory _$ContactsInformation(
          [void Function(ContactsInformationBuilder) updates]) =>
      (new ContactsInformationBuilder()..update(updates)).build();

  _$ContactsInformation._(
      {this.id,
      this.isReachable,
      this.email_address,
      this.zipcode,
      this.city,
      this.state,
      this.physical_address,
      this.home_phone,
      this.work_phone,
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
        email_address == other.email_address &&
        zipcode == other.zipcode &&
        city == other.city &&
        state == other.state &&
        physical_address == other.physical_address &&
        home_phone == other.home_phone &&
        work_phone == other.work_phone &&
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
                                    email_address.hashCode),
                                zipcode.hashCode),
                            city.hashCode),
                        state.hashCode),
                    physical_address.hashCode),
                home_phone.hashCode),
            work_phone.hashCode),
        patient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactsInformation')
          ..add('id', id)
          ..add('isReachable', isReachable)
          ..add('email_address', email_address)
          ..add('zipcode', zipcode)
          ..add('city', city)
          ..add('state', state)
          ..add('physical_address', physical_address)
          ..add('home_phone', home_phone)
          ..add('work_phone', work_phone)
          ..add('patient', patient))
        .toString();
  }
}

class ContactsInformationBuilder
    implements Builder<ContactsInformation, ContactsInformationBuilder> {
  _$ContactsInformation _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _isReachable;
  bool get isReachable => _$this._isReachable;
  set isReachable(bool isReachable) => _$this._isReachable = isReachable;

  String _email_address;
  String get email_address => _$this._email_address;
  set email_address(String email_address) =>
      _$this._email_address = email_address;

  String _zipcode;
  String get zipcode => _$this._zipcode;
  set zipcode(String zipcode) => _$this._zipcode = zipcode;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _physical_address;
  String get physical_address => _$this._physical_address;
  set physical_address(String physical_address) =>
      _$this._physical_address = physical_address;

  String _home_phone;
  String get home_phone => _$this._home_phone;
  set home_phone(String home_phone) => _$this._home_phone = home_phone;

  String _work_phone;
  String get work_phone => _$this._work_phone;
  set work_phone(String work_phone) => _$this._work_phone = work_phone;

  int _patient;
  int get patient => _$this._patient;
  set patient(int patient) => _$this._patient = patient;

  ContactsInformationBuilder();

  ContactsInformationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _isReachable = _$v.isReachable;
      _email_address = _$v.email_address;
      _zipcode = _$v.zipcode;
      _city = _$v.city;
      _state = _$v.state;
      _physical_address = _$v.physical_address;
      _home_phone = _$v.home_phone;
      _work_phone = _$v.work_phone;
      _patient = _$v.patient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactsInformation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContactsInformation;
  }

  @override
  void update(void Function(ContactsInformationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactsInformation build() {
    final _$result = _$v ??
        new _$ContactsInformation._(
            id: id,
            isReachable: isReachable,
            email_address: email_address,
            zipcode: zipcode,
            city: city,
            state: state,
            physical_address: physical_address,
            home_phone: home_phone,
            work_phone: work_phone,
            patient: patient);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
