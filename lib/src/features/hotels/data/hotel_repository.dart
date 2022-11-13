import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_in_aomori/src/features/hotels/data/hotel_csv_dto.dart';
import 'package:hotel_in_aomori/src/features/hotels/domain/model/hotel.dart';
import 'package:intl/intl.dart';

class HotelRepository {
  static final provider = Provider((ref) => HotelRepository());

  List<Hotel>? _cache;

  Future<List<Hotel>> fetchHotels() async {
    if (_cache != null) return _cache!;
    final csv = await rootBundle.loadString('assets/resource/hotels.csv');
    final values = [
      for (var v in csv.split('\n')) HotelCsvDto.fromCsv(v.split(','))
    ].map((e) => e.toModel()).toList();
    _cache = values;
    return values;
  }
}

extension on HotelCsvDto {
  Hotel toModel() {
    final no = int.parse(this.no);
    final location = HotelLocation(
      prefecture: prefecture,
      city: city,
      address: address,
      building: (building.isNotEmpty) ? building : null,
      floor: (floor.isNotEmpty) ? floor : null,
      latitude: (latitude.isNotEmpty) ? double.parse(latitude) : null,
      longitude: (longitude.isNotEmpty) ? double.parse(longitude) : null,
    );
    return Hotel(
      no: no,
      type: type,
      name: name,
      location: location,
      tel: (tel.isNotEmpty) ? tel : null,
      applicant: applicant,
      healthCenterName: healthCenterName,
      allowedDate: allowedDate,
      allowedNo: allowedNo,
    );
  }
}
