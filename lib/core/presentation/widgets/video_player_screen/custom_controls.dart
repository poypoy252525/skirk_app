import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/presentation/providers/episode_sources_provider/episode_sources_provider.dart';
import 'package:skirk_app/core/presentation/providers/minimize_video_player_controller/minimize_video_player_controller_provider.dart';
import 'package:skirk_app/core/presentation/providers/move_video_player_controller_provider/move_video_player_controller_provider.dart';
import 'package:skirk_app/core/presentation/providers/playing_data_provider/playing_data_provider.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/episode_metadata.dart';
import 'package:skirk_app/core/utils.dart';
import 'package:video_player/video_player.dart';

class CustomControls extends ConsumerStatefulWidget {
  const CustomControls({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomControlsState();
}

class _CustomControlsState extends ConsumerState<CustomControls> {
  bool showControls = true;
  bool mountedControls = true;
  Timer? _hideTimer;
  Duration opacityDuration = Duration(milliseconds: 200);
  bool show2xSpeed = false;
  bool showMinimizeControls = false;
  bool _showSubtitle = true;

  ChewieController? _chewieController;

  ChewieController get chewieController => _chewieController!;
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    _startHideTimer();

    _showSubtitle =
        _chewieController?.showSubtitles ??
        _chewieController?.subtitle?.isNotEmpty ??
        true;

    final minimizeVideoPlayerController = ref.read(
      minimizeVideoPlayerControllerProvider,
    );

    mountedControls = minimizeVideoPlayerController?.isDismissed ?? true;
    showMinimizeControls = minimizeVideoPlayerController?.isCompleted ?? false;

    minimizeVideoPlayerController?.addStatusListener((status) {
      if (!mounted) return;
      setState(() {
        if (status.isDismissed) {
          mountedControls = true;
        } else {
          mountedControls = false;
        }
        if (status.isCompleted) {
          showMinimizeControls = true;
        } else {
          showMinimizeControls = false;
        }
      });
    });
  }

  @override
  void didChangeDependencies() {
    final oldController = _chewieController;
    _chewieController = ChewieController.of(context);
    videoPlayerController = chewieController.videoPlayerController;

    if (oldController != chewieController) {
      debugPrint('did change');

      videoPlayerController.addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      top: false,
      child: Stack(
        children: [
          // Positioned.fill(child: Container(color: Colors.amber)),
          if ((chewieController.subtitle != null && mountedControls ||
                  show2xSpeed) &&
              _showSubtitle)
            Align(
              alignment: Alignment.bottomCenter,
              child: AbsorbPointer(
                absorbing: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: _buildSubtitles(
                    chewieController: chewieController,
                    context: context,
                    subtitles: chewieController.subtitle!,
                    videoPlayerController: videoPlayerController,
                    size: chewieController.isFullScreen ? 18 : 12,
                  ),
                ),
              ),
            ),
          Positioned.fill(
            child: GestureDetector(
              // onDoubleTap: () {
              //   debugPrint('double tap');
              // },
              onTap: () {
                setState(() {
                  showControls = !showControls;
                });
                if (showControls) {
                  _startHideTimer();
                } else {
                  _cancelHideTimer();
                }
              },
              onLongPress: () {
                if (!chewieController.isPlaying) return;
                videoPlayerController.setPlaybackSpeed(2.0);
                setState(() {
                  mountedControls = false;
                  show2xSpeed = true;
                });
              },
              onLongPressEnd: (details) {
                videoPlayerController.setPlaybackSpeed(1.0);
                setState(() {
                  mountedControls = true;
                  show2xSpeed = false;
                });
              },
              child: mountedControls
                  ? AbsorbPointer(
                      absorbing: !showControls,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          AnimatedContainer(
                            duration: opacityDuration,
                            color: showControls
                                ? Colors.black.withValues(alpha: 0.5)
                                : Colors.transparent,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: _buildActionBar(),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: _buildCenterArea(),
                          ),
                          Positioned(
                            bottom: chewieController.isFullScreen ? 0 : -6.5,
                            left: 0,
                            right: 0,
                            child: _buildBottomBar(),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      child: show2xSpeed
                          ? Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 2,
                                    horizontal: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '2x',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(Icons.fast_forward),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),
                    ),
            ),
          ),
          if (showMinimizeControls)
            Positioned.fill(
              child: MinimizedControls(
                chewieController: chewieController,
                showSubtitle: _showSubtitle,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCenterArea() {
    final buttonStyle = ButtonStyle(
      backgroundColor: WidgetStateColor.resolveWith((states) {
        return Colors.black.withValues(alpha: 0.3);
      }),
    );

    final isPlaying = videoPlayerController.value.isPlaying;
    final isFinished =
        videoPlayerController.value.position >=
        videoPlayerController.value.duration;
    return !videoPlayerController.value.isBuffering
        ? AnimatedOpacity(
            opacity: showControls ? 1 : 0,
            duration: opacityDuration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 48,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous),
                  style: buttonStyle,
                ),
                IconButton(
                  onPressed: () {
                    _startHideTimer();
                    setState(() {
                      if (isPlaying) {
                        videoPlayerController.pause();
                      } else {
                        if (isFinished) {
                          videoPlayerController.seekTo(Duration.zero);
                        }
                        videoPlayerController.play();
                      }
                    });
                  },

                  icon: Icon(
                    isPlaying
                        ? Icons.pause
                        : isFinished
                        ? Icons.replay
                        : Icons.play_arrow,
                  ),
                  // iconSize: 32,
                  style: buttonStyle,
                  iconSize: 44,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next),
                  style: buttonStyle,
                ),
              ],
            ),
          )
        : Center(child: CircularProgressIndicator());
  }

  Widget _buildBottomBar() {
    return Container(
      // height: 50,
      padding: chewieController.isFullScreen
          ? EdgeInsets.symmetric(vertical: 12, horizontal: 12)
          : EdgeInsets.all(0),
      // color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            flex: 2,
            child: AnimatedOpacity(
              duration: opacityDuration,
              opacity: showControls ? 1 : 0,
              child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: _buildPosition(),
                    ),
                    IconButton(
                      onPressed: () {
                        if (chewieController.isFullScreen) {
                          chewieController.exitFullScreen();
                        } else {
                          chewieController.enterFullScreen();
                        }
                      },
                      icon: Icon(
                        chewieController.isFullScreen
                            ? Icons.fullscreen_exit
                            : Icons.fullscreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: chewieController.isFullScreen
                  ? const EdgeInsets.symmetric(horizontal: 8)
                  : const EdgeInsets.all(0),
              child: AnimatedOpacity(
                duration: opacityDuration,
                opacity: showControls || !chewieController.isFullScreen ? 1 : 0,
                child: SizedBox(
                  height: 15,
                  child: MaterialVideoProgressBar(
                    videoPlayerController,
                    barHeight: 2,
                    colors: ChewieProgressColors(
                      handleColor: Colors.red,
                      playedColor: showControls || chewieController.isFullScreen
                          ? Colors.red
                          : Colors.white,
                      bufferedColor: Colors.white.withValues(alpha: 0.42),
                      backgroundColor: Colors.white.withValues(alpha: 0.3),
                    ),
                    handleHeight: showControls || chewieController.isFullScreen
                        ? 6
                        : 0,
                    draggableProgressBar: true,
                    onDragStart: () {
                      _cancelHideTimer();
                    },
                    onDragEnd: () {
                      _startHideTimer();
                    },
                  ),
                ),
              ),
            ),
          ),
          if (chewieController.isFullScreen)
            Flexible(
              child: AnimatedOpacity(
                opacity: showControls ? 1 : 0,
                duration: opacityDuration,
                child: SizedBox(height: 10, child: Row(children: [])),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildActionBar() {
    return Padding(
      padding: chewieController.isFullScreen
          ? const EdgeInsets.symmetric(horizontal: 12)
          : const EdgeInsets.all(0),
      child: AnimatedOpacity(
        duration: opacityDuration,
        opacity: showControls ? 1 : 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (chewieController.isFullScreen)
              Flexible(
                flex: 2,
                child: ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EpisodeMetadata(),
                  ),
                ),
              ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _showSubtitle = !_showSubtitle;
                      });
                    },
                    icon: Icon(
                      _showSubtitle
                          ? Icons.closed_caption
                          : Icons.closed_caption_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _startHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(Duration(seconds: 5), () {
      if (mounted) {
        setState(() {
          showControls = false;
        });
      }
    });
  }

  void _cancelHideTimer() {
    _hideTimer?.cancel();
  }

  Widget _buildPosition() {
    return RichText(
      text: TextSpan(
        text: '${formatDuration(videoPlayerController.value.position)} ',
        children: <InlineSpan>[
          TextSpan(
            text: '/ ${formatDuration(videoPlayerController.value.duration)}',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white.withValues(alpha: .75),
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MinimizedControls extends ConsumerStatefulWidget {
  const MinimizedControls({
    super.key,
    required this.chewieController,
    required this.showSubtitle,
  });

  final ChewieController chewieController;
  final bool showSubtitle;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MinimizedControlsState();
}

class _MinimizedControlsState extends ConsumerState<MinimizedControls>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool showButtons = true;
  Timer timer = Timer(Duration.zero, () {});

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );

    _updateButtons();

    widget.chewieController.videoPlayerController.addListener(_updateButtons);
  }

  @override
  void dispose() {
    timer.cancel();
    widget.chewieController.videoPlayerController.removeListener(
      _updateButtons,
    );
    controller.dispose();
    super.dispose();
  }

  void _updateButtons() {
    if (!mounted) return;
    if (widget.chewieController.isPlaying) {
      if (showButtons) {
        timer.cancel();
        timer = Timer(Duration(seconds: 5), () {
          controller.forward();
        });
        showButtons = false;
      }
    } else {
      controller.reverse();
      showButtons = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ChewieController chewieController = widget.chewieController;
    final bgColor = ColorTween(begin: Colors.black54, end: Colors.transparent);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: [
            if (chewieController.subtitle != null && widget.showSubtitle)
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: _buildSubtitles(
                    context: context,
                    subtitles: chewieController.subtitle!,
                    videoPlayerController:
                        chewieController.videoPlayerController,
                    chewieController: chewieController,
                    size: 8,
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 2,
                child: MaterialVideoProgressBar(
                  chewieController.videoPlayerController,
                  barHeight: 2,
                  handleHeight: 0,
                  colors: ChewieProgressColors(
                    backgroundColor: Colors.white.withValues(alpha: 0.4),
                    bufferedColor: Colors.white.withValues(alpha: 0.0),
                  ),
                  draggableProgressBar: false,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: IconButton(
                onPressed: () {
                  chewieController.togglePause();
                },
                color: Colors.white,
                icon: Icon(
                  chewieController.isPlaying ? Icons.pause : Icons.play_arrow,
                  shadows: [
                    Shadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 2,
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith((states) {
                    return bgColor.animate(controller).value!;
                  }),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  ref
                      .read(minimizeVideoPlayerControllerProvider.notifier)
                      .set(null);
                  ref
                      .read(moveVideoPlayerControllerProvider.notifier)
                      .set(null);
                  ref.read(playingDataProvider.notifier).remove();
                  ref.read(episodeSourcesProvider.notifier).remove();
                  showMinimizableScreen.value = false;
                },
                color: Colors.white,
                icon: Icon(
                  Icons.close,
                  shadows: [
                    Shadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 2,
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith((states) {
                    return bgColor.animate(controller).value!;
                  }),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

Widget _buildSubtitles({
  required BuildContext context,
  required Subtitles subtitles,
  required VideoPlayerController videoPlayerController,
  required ChewieController chewieController,
  required double size,
}) {
  // if (!_subtitleOn) {
  //   return const SizedBox();
  // }
  final currentSubtitle = subtitles.getByPosition(
    videoPlayerController.value.position,
  );
  if (currentSubtitle.isEmpty) {
    return const SizedBox();
  }

  if (chewieController.subtitleBuilder != null) {
    return chewieController.subtitleBuilder!(
      context,
      currentSubtitle.first!.text,
    );
  }

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
    decoration: BoxDecoration(
      color: const Color(0x96000000),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      currentSubtitle.first!.text.toString(),
      style: TextStyle(fontSize: size, fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    ),
  );
}
