import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_in_aomori/src/features/hotels/application/get_hotel_data_usecase.dart';
import 'package:hotel_in_aomori/src/features/hotels/domain/model/hotel.dart';

final hotelsProvider = FutureProvider.autoDispose((ref) {
  final getHotelData = ref.watch(GetHotelDataUseCase.provider);

  return getHotelData();
});

final queryProvider = StateProvider.autoDispose((ref) {
  return '';
});

final filteredHotelsProvider = Provider.autoDispose((ref) {
  bool predicate(Hotel hotel, String query) {
    if (query.trim().isEmpty) return true;
    return hotel.name.contains(query) ||
        hotel.location.city.contains(query) ||
        hotel.applicant.contains(query);
  }

  final query = ref.watch(queryProvider);
  return ref
      .watch(hotelsProvider)
      .whenData((value) => value.where((e) => predicate(e, query)).toList());
});

final isLoadingProvider = Provider.autoDispose((ref) {
  return ref.watch(filteredHotelsProvider).isLoading;
});

