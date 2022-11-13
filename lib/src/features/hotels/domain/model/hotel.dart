import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.freezed.dart';

/// 旅館業法営業許可施設
@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    /// No.
    required int no,

    /// 旅館業法上の種類
    required String type,

    /// 施設名称
    required String name,

    /// 施設所在地
    required HotelLocation location,

    /// 施設電話番号
    String? tel,

    /// 申請者
    required String applicant,

    /// 許可保健所名
    required String healthCenterName,

    /// 申請許可日
    required String allowedDate,

    /// 許可番号
    required String allowedNo,
  }) = _Hotel;
}

@freezed
class HotelLocation with _$HotelLocation {
  const factory HotelLocation({
    /// 都道府県
    required String prefecture,

    /// 市区町村
    required String city,

    /// 住所
    required String address,

    /// 建物名
    String? building,

    /// 部屋番号・階数
    String? floor,

    /// 緯度
    required double? latitude,

    /// 経度
    required double? longitude,
  }) = _HotelLocation;
}
