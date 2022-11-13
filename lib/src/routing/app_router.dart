import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_in_aomori/src/features/hotels/presentation/map/hotel_map_page.dart';

final routerProvider = Provider((ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HotelMapPage(),
    ),
  ]);
});
