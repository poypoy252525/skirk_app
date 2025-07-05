import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/video_player_widget.dart';

class WatchScreen extends ConsumerStatefulWidget {
  const WatchScreen({super.key, required this.episodeId});

  final String episodeId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WatchScreenState();
}

class _WatchScreenState extends ConsumerState<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: VideoPlayerWidget(episodeId: widget.episodeId),
      ),
    );
  }
}
