import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:skirk_app/core/domain/entities/episode_sources.dart';
import 'package:skirk_app/core/presentation/providers/episode_sources_provider/episode_sources_provider.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/custom_controls.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/full_screen_layout.dart';
import 'package:subtitle/subtitle.dart' hide Subtitle;
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends ConsumerStatefulWidget {
  const CustomVideoPlayer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends ConsumerState<CustomVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    final episodeSources = ref.watch(hianimeEpisodeSourcesProvider);
    if (episodeSources == null) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.black,
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    debugPrint('${episodeSources.sources?.file}');

    return ChewieVideoPlayer(episodeSources: episodeSources);
  }
}

class ChewieVideoPlayer extends ConsumerStatefulWidget {
  const ChewieVideoPlayer({super.key, required this.episodeSources});

  final EpisodeSources episodeSources;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends ConsumerState<ChewieVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  SubtitleController? _subtitleController;
  final String _referer = 'https://megaplay.buzz/';

  Future<void> _initializeSubtitles(List<Track>? tracks) async {
    if (tracks?.isEmpty ?? true) return;

    final subtitleUri = Uri.parse(
      tracks
              ?.firstWhere(
                (track) => track.label == 'English',
                orElse: () {
                  return Track();
                },
              )
              .file ??
          '',
    );

    final client = Client();

    final response = await client.get(
      subtitleUri,
      headers: {'Referer': _referer},
    );

    _subtitleController = SubtitleController(
      provider: SubtitleProvider.fromString(
        data: response.body,
        type: SubtitleType.vtt,
      ),
    );

    _subtitleController!.initial();
  }

  void _initializeControllers() async {
    final data = widget.episodeSources;

    debugPrint(data.sources?.file);
    debugPrint('${data.tracks}');

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(data.sources?.file ?? ''),
      httpHeaders: {'Referer': _referer},
    );

    await Future.wait([
      _initializeSubtitles(data.tracks),
      _videoPlayerController.initialize(),
    ]);

    setState(() {});

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      showControls: true,
      customControls: CustomControls(),
      autoPlay: true,
      showSubtitles: true,
      subtitle: Subtitles(
        _subtitleController?.subtitles
                .map(
                  (sub) => Subtitle(
                    index: sub.index,
                    start: sub.start,
                    end: sub.end,
                    text: sub.data,
                  ),
                )
                .toList() ??
            [],
      ),
      routePageBuilder:
          (context, animation, secondaryAnimation, controllerProvider) {
            return FullScreenLayout(
              animation: animation,
              chewieControllerProvider: controllerProvider,
              context: context,
              secondaryAnimation: secondaryAnimation,
            );
          },
    );
  }

  @override
  void initState() {
    super.initState();

    _initializeControllers();
  }

  void _dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  void didUpdateWidget(covariant ChewieVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.episodeSources.sources?.file !=
        widget.episodeSources.sources?.file) {
      _dispose();
      _initializeControllers();
    }
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _videoPlayerController.value.isInitialized
        ? Chewie(controller: _chewieController)
        : Container(color: Colors.black);
  }
}
