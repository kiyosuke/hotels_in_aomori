// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Hotel {
  /// No.
  int get no => throw _privateConstructorUsedError;

  /// 旅館業法上の種類
  String get type => throw _privateConstructorUsedError;

  /// 施設名称
  String get name => throw _privateConstructorUsedError;

  /// 施設所在地
  HotelLocation get location => throw _privateConstructorUsedError;

  /// 施設電話番号
  String? get tel => throw _privateConstructorUsedError;

  /// 申請者
  String get applicant => throw _privateConstructorUsedError;

  /// 許可保健所名
  String get healthCenterName => throw _privateConstructorUsedError;

  /// 申請許可日
  String get allowedDate => throw _privateConstructorUsedError;

  /// 許可番号
  String get allowedNo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {int no,
      String type,
      String name,
      HotelLocation location,
      String? tel,
      String applicant,
      String healthCenterName,
      String allowedDate,
      String allowedNo});

  $HotelLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? type = null,
    Object? name = null,
    Object? location = null,
    Object? tel = freezed,
    Object? applicant = null,
    Object? healthCenterName = null,
    Object? allowedDate = null,
    Object? allowedNo = null,
  }) {
    return _then(_value.copyWith(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as HotelLocation,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      applicant: null == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as String,
      healthCenterName: null == healthCenterName
          ? _value.healthCenterName
          : healthCenterName // ignore: cast_nullable_to_non_nullable
              as String,
      allowedDate: null == allowedDate
          ? _value.allowedDate
          : allowedDate // ignore: cast_nullable_to_non_nullable
              as String,
      allowedNo: null == allowedNo
          ? _value.allowedNo
          : allowedNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelLocationCopyWith<$Res> get location {
    return $HotelLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$_HotelCopyWith(_$_Hotel value, $Res Function(_$_Hotel) then) =
      __$$_HotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int no,
      String type,
      String name,
      HotelLocation location,
      String? tel,
      String applicant,
      String healthCenterName,
      String allowedDate,
      String allowedNo});

  @override
  $HotelLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_HotelCopyWithImpl<$Res> extends _$HotelCopyWithImpl<$Res, _$_Hotel>
    implements _$$_HotelCopyWith<$Res> {
  __$$_HotelCopyWithImpl(_$_Hotel _value, $Res Function(_$_Hotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? type = null,
    Object? name = null,
    Object? location = null,
    Object? tel = freezed,
    Object? applicant = null,
    Object? healthCenterName = null,
    Object? allowedDate = null,
    Object? allowedNo = null,
  }) {
    return _then(_$_Hotel(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as HotelLocation,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      applicant: null == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as String,
      healthCenterName: null == healthCenterName
          ? _value.healthCenterName
          : healthCenterName // ignore: cast_nullable_to_non_nullable
              as String,
      allowedDate: null == allowedDate
          ? _value.allowedDate
          : allowedDate // ignore: cast_nullable_to_non_nullable
              as String,
      allowedNo: null == allowedNo
          ? _value.allowedNo
          : allowedNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Hotel implements _Hotel {
  const _$_Hotel(
      {required this.no,
      required this.type,
      required this.name,
      required this.location,
      this.tel,
      required this.applicant,
      required this.healthCenterName,
      required this.allowedDate,
      required this.allowedNo});

  /// No.
  @override
  final int no;

  /// 旅館業法上の種類
  @override
  final String type;

  /// 施設名称
  @override
  final String name;

  /// 施設所在地
  @override
  final HotelLocation location;

  /// 施設電話番号
  @override
  final String? tel;

  /// 申請者
  @override
  final String applicant;

  /// 許可保健所名
  @override
  final String healthCenterName;

  /// 申請許可日
  @override
  final String allowedDate;

  /// 許可番号
  @override
  final String allowedNo;

  @override
  String toString() {
    return 'Hotel(no: $no, type: $type, name: $name, location: $location, tel: $tel, applicant: $applicant, healthCenterName: $healthCenterName, allowedDate: $allowedDate, allowedNo: $allowedNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hotel &&
            (identical(other.no, no) || other.no == no) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.applicant, applicant) ||
                other.applicant == applicant) &&
            (identical(other.healthCenterName, healthCenterName) ||
                other.healthCenterName == healthCenterName) &&
            (identical(other.allowedDate, allowedDate) ||
                other.allowedDate == allowedDate) &&
            (identical(other.allowedNo, allowedNo) ||
                other.allowedNo == allowedNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, no, type, name, location, tel,
      applicant, healthCenterName, allowedDate, allowedNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      __$$_HotelCopyWithImpl<_$_Hotel>(this, _$identity);
}

abstract class _Hotel implements Hotel {
  const factory _Hotel(
      {required final int no,
      required final String type,
      required final String name,
      required final HotelLocation location,
      final String? tel,
      required final String applicant,
      required final String healthCenterName,
      required final String allowedDate,
      required final String allowedNo}) = _$_Hotel;

  @override

  /// No.
  int get no;
  @override

  /// 旅館業法上の種類
  String get type;
  @override

  /// 施設名称
  String get name;
  @override

  /// 施設所在地
  HotelLocation get location;
  @override

  /// 施設電話番号
  String? get tel;
  @override

  /// 申請者
  String get applicant;
  @override

  /// 許可保健所名
  String get healthCenterName;
  @override

  /// 申請許可日
  String get allowedDate;
  @override

  /// 許可番号
  String get allowedNo;
  @override
  @JsonKey(ignore: true)
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotelLocation {
  /// 都道府県
  String get prefecture => throw _privateConstructorUsedError;

  /// 市区町村
  String get city => throw _privateConstructorUsedError;

  /// 住所
  String get address => throw _privateConstructorUsedError;

  /// 建物名
  String? get building => throw _privateConstructorUsedError;

  /// 部屋番号・階数
  String? get floor => throw _privateConstructorUsedError;

  /// 緯度
  double? get latitude => throw _privateConstructorUsedError;

  /// 経度
  double? get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelLocationCopyWith<HotelLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelLocationCopyWith<$Res> {
  factory $HotelLocationCopyWith(
          HotelLocation value, $Res Function(HotelLocation) then) =
      _$HotelLocationCopyWithImpl<$Res, HotelLocation>;
  @useResult
  $Res call(
      {String prefecture,
      String city,
      String address,
      String? building,
      String? floor,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$HotelLocationCopyWithImpl<$Res, $Val extends HotelLocation>
    implements $HotelLocationCopyWith<$Res> {
  _$HotelLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefecture = null,
    Object? city = null,
    Object? address = null,
    Object? building = freezed,
    Object? floor = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelLocationCopyWith<$Res>
    implements $HotelLocationCopyWith<$Res> {
  factory _$$_HotelLocationCopyWith(
          _$_HotelLocation value, $Res Function(_$_HotelLocation) then) =
      __$$_HotelLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String prefecture,
      String city,
      String address,
      String? building,
      String? floor,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$_HotelLocationCopyWithImpl<$Res>
    extends _$HotelLocationCopyWithImpl<$Res, _$_HotelLocation>
    implements _$$_HotelLocationCopyWith<$Res> {
  __$$_HotelLocationCopyWithImpl(
      _$_HotelLocation _value, $Res Function(_$_HotelLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefecture = null,
    Object? city = null,
    Object? address = null,
    Object? building = freezed,
    Object? floor = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_HotelLocation(
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      building: freezed == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_HotelLocation implements _HotelLocation {
  const _$_HotelLocation(
      {required this.prefecture,
      required this.city,
      required this.address,
      this.building,
      this.floor,
      required this.latitude,
      required this.longitude});

  /// 都道府県
  @override
  final String prefecture;

  /// 市区町村
  @override
  final String city;

  /// 住所
  @override
  final String address;

  /// 建物名
  @override
  final String? building;

  /// 部屋番号・階数
  @override
  final String? floor;

  /// 緯度
  @override
  final double? latitude;

  /// 経度
  @override
  final double? longitude;

  @override
  String toString() {
    return 'HotelLocation(prefecture: $prefecture, city: $city, address: $address, building: $building, floor: $floor, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelLocation &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prefecture, city, address,
      building, floor, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelLocationCopyWith<_$_HotelLocation> get copyWith =>
      __$$_HotelLocationCopyWithImpl<_$_HotelLocation>(this, _$identity);
}

abstract class _HotelLocation implements HotelLocation {
  const factory _HotelLocation(
      {required final String prefecture,
      required final String city,
      required final String address,
      final String? building,
      final String? floor,
      required final double? latitude,
      required final double? longitude}) = _$_HotelLocation;

  @override

  /// 都道府県
  String get prefecture;
  @override

  /// 市区町村
  String get city;
  @override

  /// 住所
  String get address;
  @override

  /// 建物名
  String? get building;
  @override

  /// 部屋番号・階数
  String? get floor;
  @override

  /// 緯度
  double? get latitude;
  @override

  /// 経度
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_HotelLocationCopyWith<_$_HotelLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
