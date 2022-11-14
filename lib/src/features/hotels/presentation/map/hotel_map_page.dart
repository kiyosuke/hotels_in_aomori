import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_in_aomori/gen/assets.gen.dart';
import 'package:hotel_in_aomori/src/constants/constants.dart';
import 'package:hotel_in_aomori/src/features/hotels/domain/model/hotel.dart';
import 'package:hotel_in_aomori/src/features/hotels/presentation/map/hotel_map_state.dart';
import 'package:hotel_in_aomori/src/features/hotels/presentation/map/search_bar.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelMapPage extends ConsumerWidget {
  const HotelMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Marker> markers = ref.watch(filteredHotelsProvider).maybeWhen(
          data: (data) => data
              .where((e) =>
                  e.location.latitude != null && e.location.longitude != null)
              .map((e) {
            final Color color;
            if (e.type == '旅館・ホテル') {
              color = Colors.red;
            } else if (e.type == '下宿') {
              color = Colors.green;
            } else {
              color = Colors.blue;
            }
            return Marker(
              point: LatLng(e.location.latitude!, e.location.longitude!),
              builder: (context) => GestureDetector(
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
                child: Icon(Icons.location_on, color: color),
              ),
            );
          }).toList(),
          orElse: () => const [],
        );
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(40.5123296, 141.4839067),
              zoom: 12.0,
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
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchBar(),
            ),
          ),
          const Positioned(
            right: 16.0,
            bottom: 16.0,
            child: _MenuArea(),
          ),
          const Positioned(
            left: 16.0,
            bottom: 16.0,
            child: _MarkerExampleArea(),
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
          SelectableText(
            hotel.name,
            style: Theme.of(context).textTheme.headline4,
          ),
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

class _MenuArea extends StatelessWidget {
  const _MenuArea();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                showLicensePage(context: context);
              },
              icon: const Icon(Icons.info),
              tooltip: '情報',
            ),
            const VerticalDivider(width: 1.0),
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse(Constants.githubRepositoryUrl));
              },
              icon: SvgPicture.asset(Assets.icons.markGithub),
              tooltip: 'GitHub',
            ),
          ],
        ),
      ),
    );
  }
}

class _MarkerExampleArea extends StatelessWidget {
  const _MarkerExampleArea();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: const [
          _MarkerExample(
            title: '旅館・ホテル',
            marker: Icon(Icons.location_on, color: Colors.red),
          ),
          SizedBox(width: 4.0),
          _MarkerExample(
            title: '下宿',
            marker: Icon(Icons.location_on, color: Colors.green),
          ),
          SizedBox(width: 4.0),
          _MarkerExample(
            title: '簡易宿泊所',
            marker: Icon(Icons.location_on, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

class _MarkerExample extends StatelessWidget {
  final String title;
  final Widget marker;

  const _MarkerExample({super.key, required this.title, required this.marker});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        marker,
        const SizedBox(height: 4.0),
        Text(title, style: Theme.of(context).textTheme.caption)
      ],
    );
  }
}