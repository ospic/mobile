// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Report> _$reportSerializer = new _$ReportSerializer();

class _$ReportSerializer implements StructuredSerializer<Report> {
  @override
  final Iterable<Type> types = const [Report, _$Report];
  @override
  final String wireName = 'Report';

  @override
  Iterable<Object?> serialize(Serializers serializers, Report object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Report deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Report extends Report {
  @override
  final int id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? location;
  @override
  final String? type;
  @override
  final String? size;

  factory _$Report([void Function(ReportBuilder)? updates]) =>
      (new ReportBuilder()..update(updates))._build();

  _$Report._(
      {required this.id,
      this.name,
      this.url,
      this.location,
      this.type,
      this.size})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Report', 'id');
  }

  @override
  Report rebuild(void Function(ReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBuilder toBuilder() => new ReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Report &&
        id == other.id &&
        name == other.name &&
        url == other.url &&
        location == other.location &&
        type == other.type &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), url.hashCode),
                location.hashCode),
            type.hashCode),
        size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Report')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url)
          ..add('location', location)
          ..add('type', type)
          ..add('size', size))
        .toString();
  }
}

class ReportBuilder implements Builder<Report, ReportBuilder> {
  _$Report? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  ReportBuilder();

  ReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _url = $v.url;
      _location = $v.location;
      _type = $v.type;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Report other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Report;
  }

  @override
  void update(void Function(ReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Report build() => _build();

  _$Report _build() {
    final _$result = _$v ??
        new _$Report._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Report', 'id'),
            name: name,
            url: url,
            location: location,
            type: type,
            size: size);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
