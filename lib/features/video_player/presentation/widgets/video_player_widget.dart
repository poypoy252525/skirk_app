import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:skirk_app/core/functions.dart';
import 'package:skirk_app/core/providers/fade_animation_provider/fade_animation_provider.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';
import 'package:skirk_app/features/video_player/domain/entities/episode_sources.dart';
import 'package:skirk_app/features/video_player/presentation/providers/episode_sources_provider.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/custom_controls.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/drag_video_player_gesture.dart';
import 'package:subtitle/subtitle.dart' as sub;
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

    final controller = ref.watch(minimizeAnimationControllerProvider);
    final fadeController = ref.watch(fadeAnimationProvider);

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

    sub.SubtitleController? subtitleController;
    final Track? track = episodeSources.tracks?.firstWhere(
      (i) => i.lang == 'English',
      orElse: () => Track(),
    );
    if (track != null && track.url != null) {
      final subtitleUri = Uri.parse(track.url!);

      subtitleController = sub.SubtitleController(
        provider: sub.SubtitleProvider.fromNetwork(subtitleUri),
      );
      await subtitleController.initial();
    }

    return ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,

      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        bufferedColor: Colors.white.withValues(alpha: 0.5),
        handleColor: Colors.red,
      ),
      customControls: CustomMaterialControls(
        title: _title,
        animationController: controller,
        fadeController: fadeController!,
      ),
      showSubtitles: true,
      subtitle: Subtitles(
        subtitleController != null
            ? subtitleController.subtitles
                  .map(
                    (el) => Subtitle(
                      index: el.index,
                      start: el.start,
                      end: el.end,
                      text: el.data,
                    ),
                  )
                  .toList()
            : [],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint('initialized video_player_widget');
    _controllerFuture = initController();
    ref.read(minimizeAnimationControllerProvider)?.addStatusListener((status) {
      if (!mounted) return;
      if (status.isDismissed) {
        setState(() {
          canPan = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _controllerFuture.then((controller) {
      debugPrint('disposing video player widget');
      _videoPlayerController.dispose();
      controller.dispose();
    });
    super.dispose();
  }

  bool canPan = true;

  @override
  Widget build(BuildContext context) {
    final animationController = ref.read(minimizeAnimationControllerProvider);
    return FutureBuilder<ChewieController>(
      future: _controllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final controller = snapshot.data!;
          return AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: Chewie(controller: controller),
          );
        } else {
          return DragVideoPlayerGesture(
            onPanEnd: (details) {
              if (animationController == null) return;
              panEndVideoPlayer(
                animationController: animationController,
                details: details,
              );
            },
            onPanStart: (details) {
              if (animationController == null) return;
              if (animationController.isCompleted) {
                setState(() {
                  canPan = false;
                });
              }
            },
            onPanUpdate: (details) {
              if (animationController == null) return;

              if (canPan) {
                panUpdateVideoPlayer(
                  context: context,
                  animationController: animationController,
                  details: details,
                );
                return;
              }
            },
            onTap: () {
              if (animationController == null) return;
              maximizeVideoPlayer(animationController: animationController);
            },
            canMove: canPan,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.transparent,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          );
        }
      },
    );
  }
}
