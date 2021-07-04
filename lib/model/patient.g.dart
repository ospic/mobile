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
  Iterable<Object?> serialize(Serializers serializers, Patient object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastModifiedDate;
    if (value != null) {
      result
        ..add('lastModifiedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastModifiedBy;
    if (value != null) {
      result
        ..add('lastModifiedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guardianName;
    if (value != null) {
      result
        ..add('guardianName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.height;
    if (value != null) {
      result
        ..add('height')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bloodPressure;
    if (value != null) {
      result
        ..add('bloodPressure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isAdmitted;
    if (value != null) {
      result
        ..add('isAdmitted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.patientPhoto;
    if (value != null) {
      result
        ..add('patientPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bloodGroup;
    if (value != null) {
      result
        ..add('bloodGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.allergies;
    if (value != null) {
      result
        ..add('allergies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.marriageStatus;
    if (value != null) {
      result
        ..add('marriageStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
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
    value = object.hasSelfServiceUserAccount;
    if (value != null) {
      result
        ..add('hasSelfServiceUserAccount')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.contactsInformation;
    if (value != null) {
      result
        ..add('contactsInformation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ContactsInformation)));
    }
    return result;
  }

  @override
  Patient deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientBuilder();

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
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastModifiedDate':
          result.lastModifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastModifiedBy':
          result.lastModifiedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'guardianName':
          result.guardianName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bloodPressure':
          result.bloodPressure = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isAdmitted':
          result.isAdmitted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'patientPhoto':
          result.patientPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bloodGroup':
          result.bloodGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'allergies':
          result.allergies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'marriageStatus':
          result.marriageStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'hasSelfServiceUserAccount':
          result.hasSelfServiceUserAccount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'contactsInformation':
          result.contactsInformation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ContactsInformation))!
              as ContactsInformation);
          break;
      }
    }

    return result.build();
  }
}

class _$Patient extends Patient {
  @override
  final int? id;
  @override
  final String? createdDate;
  @override
  final String? createdBy;
  @override
  final String? lastModifiedDate;
  @override
  final String? lastModifiedBy;
  @override
  final String? name;
  @override
  final String? guardianName;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? emailAddress;
  @override
  final String? height;
  @override
  final String? weight;
  @override
  final String? bloodPressure;
  @override
  final int? age;
  @override
  final bool? isAdmitted;
  @override
  final String? patientPhoto;
  @override
  final String? bloodGroup;
  @override
  final String? note;
  @override
  final String? allergies;
  @override
  final String? marriageStatus;
  @override
  final String? gender;
  @override
  final bool? isActive;
  @override
  final bool? hasSelfServiceUserAccount;
  @override
  final ContactsInformation? contactsInformation;

  factory _$Patient([void Function(PatientBuilder)? updates]) =>
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
      this.allergies,
      this.marriageStatus,
      this.gender,
      this.isActive,
      this.hasSelfServiceUserAccount,
      this.contactsInformation})
      : super._();

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
        allergies == other.allergies &&
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
                            allergies.hashCode),
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
          ..add('allergies', allergies)
          ..add('marriageStatus', marriageStatus)
          ..add('gender', gender)
          ..add('isActive', isActive)
          ..add('hasSelfServiceUserAccount', hasSelfServiceUserAccount)
          ..add('contactsInformation', contactsInformation))
        .toString();
  }
}

class PatientBuilder implements Builder<Patient, PatientBuilder> {
  _$Patient? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _createdDate;
  String? get createdDate => _$this._createdDate;
  set createdDate(String? createdDate) => _$this._createdDate = createdDate;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _lastModifiedDate;
  String? get lastModifiedDate => _$this._lastModifiedDate;
  set lastModifiedDate(String? lastModifiedDate) =>
      _$this._lastModifiedDate = lastModifiedDate;

  String? _lastModifiedBy;
  String? get lastModifiedBy => _$this._lastModifiedBy;
  set lastModifiedBy(String? lastModifiedBy) =>
      _$this._lastModifiedBy = lastModifiedBy;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _guardianName;
  String? get guardianName => _$this._guardianName;
  set guardianName(String? guardianName) => _$this._guardianName = guardianName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _height;
  String? get height => _$this._height;
  set height(String? height) => _$this._height = height;

  String? _weight;
  String? get weight => _$this._weight;
  set weight(String? weight) => _$this._weight = weight;

  String? _bloodPressure;
  String? get bloodPressure => _$this._bloodPressure;
  set bloodPressure(String? bloodPressure) =>
      _$this._bloodPressure = bloodPressure;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  bool? _isAdmitted;
  bool? get isAdmitted => _$this._isAdmitted;
  set isAdmitted(bool? isAdmitted) => _$this._isAdmitted = isAdmitted;

  String? _patientPhoto;
  String? get patientPhoto => _$this._patientPhoto;
  set patientPhoto(String? patientPhoto) => _$this._patientPhoto = patientPhoto;

  String? _bloodGroup;
  String? get bloodGroup => _$this._bloodGroup;
  set bloodGroup(String? bloodGroup) => _$this._bloodGroup = bloodGroup;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _allergies;
  String? get allergies => _$this._allergies;
  set allergies(String? allergies) => _$this._allergies = allergies;

  String? _marriageStatus;
  String? get marriageStatus => _$this._marriageStatus;
  set marriageStatus(String? marriageStatus) =>
      _$this._marriageStatus = marriageStatus;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _hasSelfServiceUserAccount;
  bool? get hasSelfServiceUserAccount => _$this._hasSelfServiceUserAccount;
  set hasSelfServiceUserAccount(bool? hasSelfServiceUserAccount) =>
      _$this._hasSelfServiceUserAccount = hasSelfServiceUserAccount;

  ContactsInformationBuilder? _contactsInformation;
  ContactsInformationBuilder get contactsInformation =>
      _$this._contactsInformation ??= new ContactsInformationBuilder();
  set contactsInformation(ContactsInformationBuilder? contactsInformation) =>
      _$this._contactsInformation = contactsInformation;

  PatientBuilder();

  PatientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdDate = $v.createdDate;
      _createdBy = $v.createdBy;
      _lastModifiedDate = $v.lastModifiedDate;
      _lastModifiedBy = $v.lastModifiedBy;
      _name = $v.name;
      _guardianName = $v.guardianName;
      _phone = $v.phone;
      _address = $v.address;
      _emailAddress = $v.emailAddress;
      _height = $v.height;
      _weight = $v.weight;
      _bloodPressure = $v.bloodPressure;
      _age = $v.age;
      _isAdmitted = $v.isAdmitted;
      _patientPhoto = $v.patientPhoto;
      _bloodGroup = $v.bloodGroup;
      _note = $v.note;
      _allergies = $v.allergies;
      _marriageStatus = $v.marriageStatus;
      _gender = $v.gender;
      _isActive = $v.isActive;
      _hasSelfServiceUserAccount = $v.hasSelfServiceUserAccount;
      _contactsInformation = $v.contactsInformation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Patient other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Patient;
  }

  @override
  void update(void Function(PatientBuilder)? updates) {
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
              allergies: allergies,
              marriageStatus: marriageStatus,
              gender: gender,
              isActive: isActive,
              hasSelfServiceUserAccount: hasSelfServiceUserAccount,
              contactsInformation: _contactsInformation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contactsInformation';
        _contactsInformation?.build();
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
