import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_in_aomori/src/features/hotels/presentation/map/hotel_map_state.dart';

class SearchBar extends ConsumerWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          constraints: const BoxConstraints(
            maxWidth: 392,
            minHeight: 48,
            maxHeight: 48,
          ),
          hintText: '絞り込み条件を入力',
          prefixIcon: ref.watch(isLoadingProvider)
              ? const CircularProgressIndicator()
              : const Icon(Icons.search),
        ),
        maxLines: 1,
        onSubmitted: (value) {
          ref.read(queryProvider.notifier).state = value;
        },
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
