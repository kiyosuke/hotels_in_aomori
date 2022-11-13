import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_in_aomori/src/features/hotels/data/hotel_repository.dart';
import 'package:hotel_in_aomori/src/features/hotels/domain/model/hotel.dart';

/// 宿泊施設一覧取得
class GetHotelDataUseCase {
  static final provider = Provider(
    (ref) => GetHotelDataUseCase(ref.watch(HotelRepository.provider)),
  );

  final HotelRepository _hotelRepo;

  GetHotelDataUseCase(this._hotelRepo);

  Future<List<Hotel>> call() async {
    final hotels = await _hotelRepo.fetchHotels();
    return hotels;
  }
}
