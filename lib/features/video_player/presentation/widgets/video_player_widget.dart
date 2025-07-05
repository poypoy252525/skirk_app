import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/video_player/presentation/providers/episode_sources_provider.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends ConsumerStatefulWidget {
  const VideoPlayerWidget({super.key, required this.episodeId});
  final String episodeId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends ConsumerState<VideoPlayerWidget> {
  late Future<VideoPlayerController> _controllerFuture;

  Future<VideoPlayerController> initController() async {
    final episodeSources = await ref.read(
      episodeSourcesProvider(
        episodeId: widget.episodeId,
        category: 'sub',
        server: 'hd-2',
      ).future,
    );

    final controller = VideoPlayerController.networkUrl(
      Uri.parse(episodeSources.sources[0].url ?? ''),
    );

    await controller.initialize();
    return controller..play();
  }

  @override
  void initState() {
    super.initState();
    _controllerFuture = initController();
  }

  @override
  void dispose() {
    _controllerFuture.then((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<VideoPlayerController>(
      future: _controllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final controller = snapshot.data!;
          return AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: GestureDetector(
              onPanUpdate: (details) {
                debugPrint(details.delta.dx.toString());
              },
              child: VideoPlayer(controller),
            ),
          );
        } else {
          return AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.black,
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }
      },
    );
  }
}
