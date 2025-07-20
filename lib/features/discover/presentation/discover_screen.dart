import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:skirk_app/utils/hianime_scraper.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final draggableController = DraggableScrollableController();

  @override
  void initState() {
    super.initState();
  }

  Offset position = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Client client = Client();
            final scraper = HianimeScraper(client);
            final episodes = await scraper.getEpisodes(malId: 16498);
            for (final episode in episodes) {
              debugPrint(episode.id);
            }
          },
          child: Text('Show Video Player'),
        ),
      ),
    );
  }
}
