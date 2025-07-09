import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/video_player/presentation/providers/episode_sources_provider.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/custom_controls.dart';
import 'package:subtitle/subtitle.dart' as Sub;
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends ConsumerStatefulWidget {
  const VideoPlayerWidget({super.key, required this.episodeId});
  final String episodeId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends ConsumerState<VideoPlayerWidget> {
  late Future<ChewieController> _controllerFuture;
  late VideoPlayerController _videoPlayerController;
  final String _title = 'Episode title here';

  Future<ChewieController> initController() async {
    final episodeSources = await ref.read(
      episodeSourcesProvider(
        episodeId: widget.episodeId,
        category: 'sub',
        server: 'hd-1',
      ).future,
    );

    final track = episodeSources.tracks?.firstWhere((i) => i.lang == 'English');

    final subtitleUri = Uri.parse(track!.url!);

    final subtitleController = Sub.SubtitleController(
      provider: Sub.SubtitleProvider.fromNetwork(subtitleUri),
    );
    await subtitleController.initial();

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(episodeSources.sources[0].url ?? ''),
      httpHeaders: {'Referer': 'https://megacloud.blog/'},
      formatHint:
          episodeSources.sources[0].isM3U8 != null &&
              episodeSources.sources[0].isM3U8!
          ? VideoFormat.hls
          : VideoFormat.other,
    );

    await _videoPlayerController.initialize();

    return ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,

      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        bufferedColor: Colors.white.withValues(alpha: 0.5),
        handleColor: Colors.red,
      ),
      customControls: CustomMaterialControls(title: _title),
      showSubtitles: true,
      subtitle: Subtitles(
        subtitleController.subtitles
            .map(
              (el) => Subtitle(
                index: el.index,
                start: el.start,
                end: el.end,
                text: el.data,
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controllerFuture = initController();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _controllerFuture.then((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ChewieController>(
      future: _controllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final controller = snapshot.data!;
          return AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: GestureDetector(
              onPanUpdate: (details) {
                debugPrint(details.delta.dy.toString());
              },
              child: Chewie(controller: controller),
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

// void _parseTrackToSubtitle() {}
