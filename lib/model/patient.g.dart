// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Patient> _$patientSerializer = new _$PatientSerializer();

class _$PatientSerializer implements StructuredSerializer<Patient> {
  @override
  final Iterable<Type> types = const [Patient, _$Patient];
  @override
  final String wireName = 'Patient';

  @override
  Iterable<Object> serialize(Serializers serializers, Patient object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'contactsInformation',
      serializers.serialize(object.contactsInformation,
          specifiedType: const FullType(ContactsInformation)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(object.createdDate,
            specifiedType: const FullType(String)));
    }
    if (object.createdBy != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(object.createdBy,
            specifiedType: const FullType(String)));
    }
    if (object.lastModifiedDate != null) {
      result
        ..add('lastModifiedDate')
        ..add(serializers.serialize(object.lastModifiedDate,
            specifiedType: const FullType(String)));
    }
    if (object.lastModifiedBy != null) {
      result
        ..add('lastModifiedBy')
        ..add(serializers.serialize(object.lastModifiedBy,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.guardianName != null) {
      result
        ..add('guardianName')
        ..add(serializers.serialize(object.guardianName,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.emailAddress != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(object.emailAddress,
            specifiedType: const FullType(String)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(String)));
    }
    if (object.weight != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(object.weight,
            specifiedType: const FullType(String)));
    }
    if (object.bloodPressure != null) {
      result
        ..add('bloodPressure')
        ..add(serializers.serialize(object.bloodPressure,
            specifiedType: const FullType(String)));
    }
    if (object.age != null) {
      result
        ..add('age')
        ..add(serializers.serialize(object.age,
            specifiedType: const FullType(int)));
    }
    if (object.isAdmitted != null) {
      result
        ..add('isAdmitted')
        ..add(serializers.serialize(object.isAdmitted,
            specifiedType: const FullType(bool)));
    }
    if (object.patientPhoto != null) {
      result
        ..add('patientPhoto')
        ..add(serializers.serialize(object.patientPhoto,
            specifiedType: const FullType(String)));
    }
    if (object.bloodGroup != null) {
      result
        ..add('bloodGroup')
        ..add(serializers.serialize(object.bloodGroup,
            specifiedType: const FullType(String)));
    }
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note,
            specifiedType: const FullType(String)));
    }
    if (object.symptoms != null) {
      result
        ..add('symptoms')
        ..add(serializers.serialize(object.symptoms,
            specifiedType: const FullType(String)));
    }
    if (object.marriageStatus != null) {
      result
        ..add('marriageStatus')
        ..add(serializers.serialize(object.marriageStatus,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.isActive != null) {
      result
        ..add('isActive')
        ..add(serializers.serialize(object.isActive,
            specifiedType: const FullType(bool)));
    }
    if (object.hasSelfServiceUserAccount != null) {
      result
        ..add('hasSelfServiceUserAccount')
        ..add(serializers.serialize(object.hasSelfServiceUserAccount,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Patient deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientBuilder();

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
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastModifiedDate':
          result.lastModifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastModifiedBy':
          result.lastModifiedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'guardianName':
          result.guardianName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bloodPressure':
          result.bloodPressure = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isAdmitted':
          result.isAdmitted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'patientPhoto':
          result.patientPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bloodGroup':
          result.bloodGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'symptoms':
          result.symptoms = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'marriageStatus':
          result.marriageStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasSelfServiceUserAccount':
          result.hasSelfServiceUserAccount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'contactsInformation':
          result.contactsInformation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ContactsInformation))
              as ContactsInformation);
          break;
      }
    }

    return result.build();
  }
}

class _$Patient extends Patient {
  @override
  final int id;
  @override
  final String createdDate;
  @override
  final String createdBy;
  @override
  final String lastModifiedDate;
  @override
  final String lastModifiedBy;
  @override
  final String name;
  @override
  final String guardianName;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String emailAddress;
  @override
  final String height;
  @override
  final String weight;
  @override
  final String bloodPressure;
  @override
  final int age;
  @override
  final bool isAdmitted;
  @override
  final String patientPhoto;
  @override
  final String bloodGroup;
  @override
  final String note;
  @override
  final String symptoms;
  @override
  final String marriageStatus;
  @override
  final String gender;
  @override
  final bool isActive;
  @override
  final bool hasSelfServiceUserAccount;
  @override
  final ContactsInformation contactsInformation;

  factory _$Patient([void Function(PatientBuilder) updates]) =>
      (new PatientBuilder()..update(updates)).build();

  _$Patient._(
      {this.id,
      this.createdDate,
      this.createdBy,
      this.lastModifiedDate,
      this.lastModifiedBy,
      this.name,
      this.guardianName,
      this.phone,
      this.address,
      this.emailAddress,
      this.height,
      this.weight,
      this.bloodPressure,
      this.age,
      this.isAdmitted,
      this.patientPhoto,
      this.bloodGroup,
      this.note,
      this.symptoms,
      this.marriageStatus,
      this.gender,
      this.isActive,
      this.hasSelfServiceUserAccount,
      this.contactsInformation})
      : super._() {
    if (contactsInformation == null) {
      throw new BuiltValueNullFieldError('Patient', 'contactsInformation');
    }
  }

  @override
  Patient rebuild(void Function(PatientBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientBuilder toBuilder() => new PatientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Patient &&
        id == other.id &&
        createdDate == other.createdDate &&
        createdBy == other.createdBy &&
        lastModifiedDate == other.lastModifiedDate &&
        lastModifiedBy == other.lastModifiedBy &&
        name == other.name &&
        guardianName == other.guardianName &&
        phone == other.phone &&
        address == other.address &&
        emailAddress == other.emailAddress &&
        height == other.height &&
        weight == other.weight &&
        bloodPressure == other.bloodPressure &&
        age == other.age &&
        isAdmitted == other.isAdmitted &&
        patientPhoto == other.patientPhoto &&
        bloodGroup == other.bloodGroup &&
        note == other.note &&
        symptoms == other.symptoms &&
        marriageStatus == other.marriageStatus &&
        gender == other.gender &&
        isActive == other.isActive &&
        hasSelfServiceUserAccount == other.hasSelfServiceUserAccount &&
        contactsInformation == other.contactsInformation;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, id.hashCode), createdDate.hashCode), createdBy.hashCode), lastModifiedDate.hashCode), lastModifiedBy.hashCode),
                                                                                name.hashCode),
                                                                            guardianName.hashCode),
                                                                        phone.hashCode),
                                                                    address.hashCode),
                                                                emailAddress.hashCode),
                                                            height.hashCode),
                                                        weight.hashCode),
                                                    bloodPressure.hashCode),
                                                age.hashCode),
                                            isAdmitted.hashCode),
                                        patientPhoto.hashCode),
                                    bloodGroup.hashCode),
                                note.hashCode),
                            symptoms.hashCode),
                        marriageStatus.hashCode),
                    gender.hashCode),
                isActive.hashCode),
            hasSelfServiceUserAccount.hashCode),
        contactsInformation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Patient')
          ..add('id', id)
          ..add('createdDate', createdDate)
          ..add('createdBy', createdBy)
          ..add('lastModifiedDate', lastModifiedDate)
          ..add('lastModifiedBy', lastModifiedBy)
          ..add('name', name)
          ..add('guardianName', guardianName)
          ..add('phone', phone)
          ..add('address', address)
          ..add('emailAddress', emailAddress)
          ..add('height', height)
          ..add('weight', weight)
          ..add('bloodPressure', bloodPressure)
          ..add('age', age)
          ..add('isAdmitted', isAdmitted)
          ..add('patientPhoto', patientPhoto)
          ..add('bloodGroup', bloodGroup)
          ..add('note', note)
          ..add('symptoms', symptoms)
          ..add('marriageStatus', marriageStatus)
          ..add('gender', gender)
          ..add('isActive', isActive)
          ..add('hasSelfServiceUserAccount', hasSelfServiceUserAccount)
          ..add('contactsInformation', contactsInformation))
        .toString();
  }
}

class PatientBuilder implements Builder<Patient, PatientBuilder> {
  _$Patient _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _createdDate;
  String get createdDate => _$this._createdDate;
  set createdDate(String createdDate) => _$this._createdDate = createdDate;

  String _createdBy;
  String get createdBy => _$this._createdBy;
  set createdBy(String createdBy) => _$this._createdBy = createdBy;

  String _lastModifiedDate;
  String get lastModifiedDate => _$this._lastModifiedDate;
  set lastModifiedDate(String lastModifiedDate) =>
      _$this._lastModifiedDate = lastModifiedDate;

  String _lastModifiedBy;
  String get lastModifiedBy => _$this._lastModifiedBy;
  set lastModifiedBy(String lastModifiedBy) =>
      _$this._lastModifiedBy = lastModifiedBy;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _guardianName;
  String get guardianName => _$this._guardianName;
  set guardianName(String guardianName) => _$this._guardianName = guardianName;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _emailAddress;
  String get emailAddress => _$this._emailAddress;
  set emailAddress(String emailAddress) => _$this._emailAddress = emailAddress;

  String _height;
  String get height => _$this._height;
  set height(String height) => _$this._height = height;

  String _weight;
  String get weight => _$this._weight;
  set weight(String weight) => _$this._weight = weight;

  String _bloodPressure;
  String get bloodPressure => _$this._bloodPressure;
  set bloodPressure(String bloodPressure) =>
      _$this._bloodPressure = bloodPressure;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  bool _isAdmitted;
  bool get isAdmitted => _$this._isAdmitted;
  set isAdmitted(bool isAdmitted) => _$this._isAdmitted = isAdmitted;

  String _patientPhoto;
  String get patientPhoto => _$this._patientPhoto;
  set patientPhoto(String patientPhoto) => _$this._patientPhoto = patientPhoto;

  String _bloodGroup;
  String get bloodGroup => _$this._bloodGroup;
  set bloodGroup(String bloodGroup) => _$this._bloodGroup = bloodGroup;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  String _symptoms;
  String get symptoms => _$this._symptoms;
  set symptoms(String symptoms) => _$this._symptoms = symptoms;

  String _marriageStatus;
  String get marriageStatus => _$this._marriageStatus;
  set marriageStatus(String marriageStatus) =>
      _$this._marriageStatus = marriageStatus;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  bool _hasSelfServiceUserAccount;
  bool get hasSelfServiceUserAccount => _$this._hasSelfServiceUserAccount;
  set hasSelfServiceUserAccount(bool hasSelfServiceUserAccount) =>
      _$this._hasSelfServiceUserAccount = hasSelfServiceUserAccount;

  ContactsInformationBuilder _contactsInformation;
  ContactsInformationBuilder get contactsInformation =>
      _$this._contactsInformation ??= new ContactsInformationBuilder();
  set contactsInformation(ContactsInformationBuilder contactsInformation) =>
      _$this._contactsInformation = contactsInformation;

  PatientBuilder();

  PatientBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdDate = _$v.createdDate;
      _createdBy = _$v.createdBy;
      _lastModifiedDate = _$v.lastModifiedDate;
      _lastModifiedBy = _$v.lastModifiedBy;
      _name = _$v.name;
      _guardianName = _$v.guardianName;
      _phone = _$v.phone;
      _address = _$v.address;
      _emailAddress = _$v.emailAddress;
      _height = _$v.height;
      _weight = _$v.weight;
      _bloodPressure = _$v.bloodPressure;
      _age = _$v.age;
      _isAdmitted = _$v.isAdmitted;
      _patientPhoto = _$v.patientPhoto;
      _bloodGroup = _$v.bloodGroup;
      _note = _$v.note;
      _symptoms = _$v.symptoms;
      _marriageStatus = _$v.marriageStatus;
      _gender = _$v.gender;
      _isActive = _$v.isActive;
      _hasSelfServiceUserAccount = _$v.hasSelfServiceUserAccount;
      _contactsInformation = _$v.contactsInformation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Patient other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Patient;
  }

  @override
  void update(void Function(PatientBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Patient build() {
    _$Patient _$result;
    try {
      _$result = _$v ??
          new _$Patient._(
              id: id,
              createdDate: createdDate,
              createdBy: createdBy,
              lastModifiedDate: lastModifiedDate,
              lastModifiedBy: lastModifiedBy,
              name: name,
              guardianName: guardianName,
              phone: phone,
              address: address,
              emailAddress: emailAddress,
              height: height,
              weight: weight,
              bloodPressure: bloodPressure,
              age: age,
              isAdmitted: isAdmitted,
              patientPhoto: patientPhoto,
              bloodGroup: bloodGroup,
              note: note,
              symptoms: symptoms,
              marriageStatus: marriageStatus,
              gender: gender,
              isActive: isActive,
              hasSelfServiceUserAccount: hasSelfServiceUserAccount,
              contactsInformation: contactsInformation.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contactsInformation';
        contactsInformation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Patient', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
