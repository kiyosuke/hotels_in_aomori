import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_in_aomori/src/features/hotels/domain/model/hotel.dart';
import 'package:hotel_in_aomori/src/features/hotels/presentation/map/hotel_map_state.dart';
import 'package:hotel_in_aomori/src/features/hotels/presentation/map/search_bar.dart';
import 'package:latlong2/latlong.dart';

class HotelMapPage extends ConsumerWidget {
  const HotelMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Marker> markers = ref.watch(filteredHotelsProvider).maybeWhen(
      data: (data) =>
          data
              .where((e) =>
          e.location.latitude != null && e.location.longitude != null)
              .map((e) =>
              Marker(
                point: LatLng(e.location.latitude!, e.location.longitude!),
                builder: (context) =>
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                          ),
                          builder: (context) => _HotelDetailsCard(hotel: e),
                        );
                      },
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                    ),
              ))
              .toList(),
      orElse: () => const [],
    );
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(40.5123296,141.4839067),
            ),
            children: [
              TileLayer(
                urlTemplate:
                'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: markers,
              ),
            ],
          ),
          const Positioned(
            top: 8.0,
            left: 8.0,
            child: SearchBar(),
          ),
        ],
      ),
    );
  }
}

class _HotelDetailsCard extends StatelessWidget {
  final Hotel hotel;

  const _HotelDetailsCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hotel.name, style: Theme
              .of(context)
              .textTheme
              .headline4),
          const SizedBox(height: 8.0),
          Text(
            '旅館業法上の種類：${hotel.type}',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 8.0),
          Text(
            '住所：${hotel.location.prefecture}${hotel.location.city}${hotel.location.address}',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(height: 8.0),
          if (hotel.tel != null) ...[
            Text(
              'TEL：${hotel.tel}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 8.0),
          ],
          Text(
            '旅館業法営業許可年月日：${hotel.allowedDate}',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(height: 8.0),
          Text(
            '申請者：${hotel.applicant}',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}