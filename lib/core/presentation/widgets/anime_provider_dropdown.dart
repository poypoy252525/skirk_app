import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/presentation/providers/settings_provider/settings_provider.dart';

class AnimeProviderDropdown extends ConsumerWidget {
  const AnimeProviderDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert), // vertical ellipsis
      onSelected: (value) {
        // Handle menu selection
        if (value == 'animepahe') {
          ref.read(animeProvider.notifier).state = AnimeProvider.animepahe;
        } else if (value == 'hianime') {
          ref.read(animeProvider.notifier).state = AnimeProvider.hianime;
        } else if (value == 'gogoanime') {
          ref.read(animeProvider.notifier).state = AnimeProvider.gogoanime;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(value: 'animepahe', child: Text('Animepahe')),
        PopupMenuItem(value: 'hianime', child: Text('Hianime')),
        PopupMenuItem(value: 'gogoanime', child: Text('Gogoanime')),
      ],
    );
  }
}
