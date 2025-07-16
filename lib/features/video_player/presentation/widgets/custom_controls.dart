// ignore_for_file: implementation_imports, depend_on_referenced_packages

import 'dart:async';

import 'package:chewie/src/center_play_button.dart';
import 'package:chewie/src/center_seek_button.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:chewie/src/chewie_progress_colors.dart';
import 'package:chewie/src/helpers/utils.dart';
import 'package:chewie/src/material/material_progress_bar.dart';
import 'package:chewie/src/material/widgets/options_dialog.dart';
import 'package:chewie/src/material/widgets/playback_speed_dialog.dart';
import 'package:chewie/src/models/option_item.dart';
import 'package:chewie/src/models/subtitle_model.dart';
import 'package:chewie/src/notifiers/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:provider/provider.dart';
import 'package:skirk_app/core/functions.dart';
import 'package:skirk_app/core/providers/fade_animation_provider/fade_animation_provider.dart';
import 'package:skirk_app/features/video_player/presentation/providers/playing_data_provider/playing_data_provider.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/drag_video_player_gesture.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/episode_title.dart';
import 'package:video_player/video_player.dart';

class CustomMaterialControls extends StatefulWidget {
  const CustomMaterialControls({
    this.showPlayButton = true,
    super.key,
    this.title,
    this.animationController,
    required this.fadeController,
  });

  final bool showPlayButton;
  final String? title;
  final AnimationController? animationController;
  final AnimationController fadeController;

  @override
  State<StatefulWidget> createState() {
    return _CustomMaterialControlsState();
  }
}

class _CustomMaterialControlsState extends State<CustomMaterialControls>
    with SingleTickerProviderStateMixin {
  late PlayerNotifier notifier;
  late VideoPlayerValue _latestValue;
  double? _latestVolume;
  Timer? _hideTimer;
  Timer? _initTimer;
  late var _subtitlesPosition = Duration.zero;
  bool _subtitleOn = false;
  Timer? _showAfterExpandCollapseTimer;
  bool _dragging = false;
  bool _displayTapped = false;
  Timer? _bufferingDisplayTimer;
  bool _displayBufferingIndicator = false;

  final barHeight = 48.0 * 1.2;
  final marginSize = 5.0;

  late VideoPlayerController controller;
  ChewieController? _chewieController;

  // We know that _chewieController is set in didChangeDependencies
  ChewieController get chewieController => _chewieController!;

  bool canMinimize = true;

  @override
  void initState() {
    super.initState();
    notifier = Provider.of<PlayerNotifier>(context, listen: false);

    widget.animationController?.addStatusListener((status) {
      if (chewieController.isFullScreen) return;
      if (!mounted) return;
      setState(() {
        if (status.isDismissed) {
          canMinimize = true;
        }
        if (status.isCompleted || status.isAnimating) {
          // _showControls = false;
          notifier.hideStuff = true;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_latestValue.hasError) {
      return chewieController.errorBuilder?.call(
            context,
            chewieController.videoPlayerController.value.errorDescription!,
          ) ??
          const Center(child: Icon(Icons.error, color: Colors.white, size: 42));
    }

    return MouseRegion(
      onHover: (_) {
        _cancelAndRestartTimer();
      },
      child: GestureDetector(
        onTap: () {
          _cancelAndRestartTimer();
          if (widget.animationController == null ||
              chewieController.isFullScreen) {
            return;
          }
          maximizeVideoPlayer(animationController: widget.animationController!);
        },
        onPanStart: (details) {
          if (widget.animationController == null ||
              chewieController.isFullScreen) {
            return;
          }

          if (widget.animationController!.isCompleted) {
            setState(() {
              canMinimize = false;
            });
          }
          // notifier.hideStuff = true;
        },
        onPanUpdate: (details) {
          if (widget.animationController == null ||
              chewieController.isFullScreen) {
            return;
          }

          if (canMinimize) {
            panUpdateVideoPlayer(
              context: context,
              animationController: widget.animationController!,
              details: details,
            );
            return;
          }
        },
        onPanEnd: (details) {
          if (widget.animationController == null) return;
          panEndVideoPlayer(
            animationController: widget.animationController!,
            details: details,
          );
        },
        child: AbsorbPointer(
          absorbing:
              !widget.animationController!.isCompleted && notifier.hideStuff,
          child: _buildContent(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  void _dispose() {
    controller.removeListener(_updateState);
    _hideTimer?.cancel();
    _initTimer?.cancel();
    _showAfterExpandCollapseTimer?.cancel();
  }

  @override
  void didChangeDependencies() {
    final oldController = _chewieController;
    _chewieController = ChewieController.of(context);
    controller = chewieController.videoPlayerController;

    if (oldController != chewieController) {
      _dispose();
      _initialize();
    }

    super.didChangeDependencies();
  }

  Widget _buildContent() {
    return Stack(
      children: [
        if (_displayBufferingIndicator)
          _chewieController?.bufferingBuilder?.call(context) ??
              const Center(child: CircularProgressIndicator())
        else if (!chewieController.isFullScreen &&
                widget.animationController!.isDismissed ||
            chewieController.isFullScreen) ...[
          _buildHitArea(),
          _buildActionBar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              if (_subtitleOn)
                Transform.translate(
                  offset: Offset(
                    0.0,
                    chewieController.isFullScreen
                        ? (notifier.hideStuff ? barHeight * 0.8 : 12)
                        : (notifier.hideStuff
                              ? barHeight * 1
                              : barHeight * 0.75),
                  ),
                  child: _buildSubtitles(
                    context,
                    chewieController.subtitle!,
                    false,
                  ),
                ),
              _buildBottomBar(context),
            ],
          ),
        ] else if (widget.animationController != null &&
            widget.animationController!.isCompleted)
          _buildMinimizedControls(),
      ],
    );
  }

  Widget _buildMinimizedControls() {
    return Positioned.fill(
      child: Stack(
        children: [
          Positioned.fill(
            child: DragVideoPlayerGesture(
              onTap: () {
                if (widget.animationController == null) return;
                maximizeVideoPlayer(
                  animationController: widget.animationController!,
                );
              },
              child: Container(color: Colors.transparent),
            ),
          ),
          Positioned(
            child: IconButton(
              onPressed: () {
                chewieController.isPlaying
                    ? chewieController.pause()
                    : chewieController.play();
              },
              icon: Icon(
                chewieController.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith((states) {
                  return Colors.black54;
                }),
              ),
            ),
          ),
          Positioned(top: 0, right: 0, child: CloseButton()),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: _buildSubtitles(context, chewieController.subtitle!, true),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionBar() {
    return Positioned(
      top: 0,
      height: 55,
      right: 0,
      left: 0,
      child: SafeArea(
        bottom: false,
        top: chewieController.isFullScreen,
        child: AnimatedOpacity(
          opacity: notifier.hideStuff ? 0.0 : 1.0,
          duration: const Duration(milliseconds: 250),
          child: GestureDetector(
            onTap: () {
              setState(() {
                notifier.hideStuff = true;
              });
            },
            child: Container(
              padding: EdgeInsets.only(right: 10, left: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withValues(alpha: 0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (chewieController.isFullScreen)
                    Flexible(flex: 8, child: EpisodeTitle())
                  else
                    Container(),
                  Flexible(
                    flex: 4,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildSubtitleToggle(),
                        if (chewieController.showOptions) _buildOptionsButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<OptionItem> _buildOptions(BuildContext context) {
    final options = <OptionItem>[
      OptionItem(
        onTap: (context) async {
          Navigator.pop(context);
          _onSpeedButtonTap();
        },
        iconData: Icons.speed,
        title:
            chewieController.optionsTranslation?.playbackSpeedButtonText ??
            'Playback speed',
      ),
    ];

    if (chewieController.additionalOptions != null &&
        chewieController.additionalOptions!(context).isNotEmpty) {
      options.addAll(chewieController.additionalOptions!(context));
    }
    return options;
  }

  // () async {
  //           _hideTimer?.cancel();

  //           if (chewieController.optionsBuilder != null) {
  //             await chewieController.optionsBuilder!(
  //               context,
  //               _buildOptions(context),
  //             );
  //           } else {
  //             await showModalBottomSheet<OptionItem>(
  //               context: context,
  //               isScrollControlled: true,
  //               useRootNavigator: chewieController.useRootNavigator,
  //               builder: (context) => OptionsDialog(
  //                 options: _buildOptions(context),
  //                 cancelButtonText:
  //                     chewieController.optionsTranslation?.cancelButtonText,
  //               ),
  //             );
  //           }

  //           if (_latestValue.isPlaying) {
  //             _startHideTimer();
  //           }
  //         }

  Widget _buildOptionsButton() {
    return IconButton(
      padding: EdgeInsets.all(0),
      onPressed: () async {
        _hideTimer?.cancel();

        if (chewieController.optionsBuilder != null) {
          await chewieController.optionsBuilder!(
            context,
            _buildOptions(context),
          );
        } else {
          await showModalBottomSheet<OptionItem>(
            context: context,
            isScrollControlled: true,
            useRootNavigator: chewieController.useRootNavigator,
            builder: (context) => OptionsDialog(
              options: _buildOptions(context),
              cancelButtonText:
                  chewieController.optionsTranslation?.cancelButtonText,
            ),
          );
        }

        if (_latestValue.isPlaying) {
          _startHideTimer();
        }
      },
      icon: Icon(Icons.settings_outlined),
    );
  }

  Widget _buildSubtitles(
    BuildContext context,
    Subtitles subtitles,
    bool isMinimized,
  ) {
    if (!_subtitleOn) {
      return const SizedBox();
    }
    final currentSubtitle = subtitles.getByPosition(_subtitlesPosition);
    if (currentSubtitle.isEmpty) {
      return const SizedBox();
    }

    if (chewieController.subtitleBuilder != null) {
      return chewieController.subtitleBuilder!(
        context,
        currentSubtitle.first!.text,
      );
    }

    // bool isMinimized = widget.animationController != null && widget.animationController!.isCompleted;

    return Padding(
      padding: EdgeInsets.all(marginSize),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: const Color(0x96000000),
          borderRadius: BorderRadius.circular(isMinimized ? 5 : 8.0),
        ),
        child: Text(
          currentSubtitle.first!.text.toString(),
          style: TextStyle(
            fontSize: chewieController.isFullScreen
                ? 18
                : isMinimized
                ? 8
                : 12,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  AnimatedOpacity _buildBottomBar(BuildContext context) {
    final iconColor = Theme.of(context).textTheme.labelLarge!.color;

    return AnimatedOpacity(
      opacity: notifier.hideStuff ? 0.0 : 1.0,
      duration: const Duration(milliseconds: 300),
      child: Container(
        height: barHeight + (chewieController.isFullScreen ? 0 : 0),
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: chewieController.isFullScreen ? 10.0 : 0,
        ),
        child: SafeArea(
          top: false,
          bottom: false,
          minimum: chewieController.controlsSafeAreaMinimum,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 0,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (chewieController.isLive)
                      const Expanded(child: Text('LIVE'))
                    else
                      _buildPosition(iconColor),
                    if (chewieController.allowMuting)
                      _buildMuteButton(controller),
                    const Spacer(),
                    if (chewieController.allowFullScreen) _buildExpandButton(),
                  ],
                ),
              ),
              // SizedBox(height: chewieController.isFullScreen ? 15.0 : 0),
              if (!chewieController.isLive)
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(children: [_buildProgressBar()]),
                  ),
                ),
              // _buildProgressBar(),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _buildMuteButton(VideoPlayerController controller) {
    return GestureDetector(
      onTap: () {
        _cancelAndRestartTimer();

        if (_latestValue.volume == 0) {
          controller.setVolume(_latestVolume ?? 0.5);
        } else {
          _latestVolume = controller.value.volume;
          controller.setVolume(0.0);
        }
      },
      child: AnimatedOpacity(
        opacity: notifier.hideStuff ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: ClipRect(
          child: Container(
            height: barHeight,
            padding: const EdgeInsets.only(left: 6.0),
            child: Icon(
              _latestValue.volume > 0 ? Icons.volume_up : Icons.volume_off,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector _buildExpandButton() {
    return GestureDetector(
      onTap: _onExpandCollapse,
      child: AnimatedOpacity(
        opacity: notifier.hideStuff ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: SizedBox(
          height: barHeight + (chewieController.isFullScreen ? 15.0 : 0),
          // padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Center(
            child: Icon(
              chewieController.isFullScreen
                  ? Icons.fullscreen_exit
                  : Icons.fullscreen,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHitArea() {
    final bool isFinished =
        (_latestValue.position >= _latestValue.duration) &&
        _latestValue.duration.inSeconds > 0;
    final bool showPlayButton =
        widget.showPlayButton && !_dragging && !notifier.hideStuff;

    return GestureDetector(
      onTap: () {
        if (_latestValue.isPlaying) {
          if (_chewieController?.pauseOnBackgroundTap ?? false) {
            _playPause();
            _cancelAndRestartTimer();
          } else {
            if (_displayTapped) {
              setState(() {
                notifier.hideStuff = true;
              });
            } else {
              _cancelAndRestartTimer();
            }
          }
        } else {
          // _playPause();

          setState(() {
            notifier.hideStuff = true;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        color: Colors
            .transparent, // The Gesture Detector doesn't expand to the full size of the container without this; Not sure why!
        child: Row(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isFinished && !chewieController.isLive)
              CenterSeekButton(
                iconData: Icons.replay_10,
                backgroundColor: Colors.black54,
                iconColor: Colors.white,
                show: showPlayButton,
                fadeDuration: chewieController.materialSeekButtonFadeDuration,
                iconSize: chewieController.materialSeekButtonSize,
                onPressed: _seekBackward,
              ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: marginSize),
              child: CenterPlayButton(
                backgroundColor: Colors.black54,
                iconColor: Colors.white,
                isFinished: isFinished,
                isPlaying: controller.value.isPlaying,
                show: showPlayButton,
                onPressed: _playPause,
              ),
            ),
            if (!isFinished && !chewieController.isLive)
              CenterSeekButton(
                iconData: Icons.forward_10,
                backgroundColor: Colors.black54,
                iconColor: Colors.white,
                show: showPlayButton,
                fadeDuration: chewieController.materialSeekButtonFadeDuration,
                iconSize: chewieController.materialSeekButtonSize,
                onPressed: _seekForward,
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _onSpeedButtonTap() async {
    _hideTimer?.cancel();

    final chosenSpeed = await showModalBottomSheet<double>(
      context: context,
      isScrollControlled: true,
      useRootNavigator: chewieController.useRootNavigator,
      builder: (context) => PlaybackSpeedDialog(
        speeds: chewieController.playbackSpeeds,
        selected: _latestValue.playbackSpeed,
      ),
    );

    if (chosenSpeed != null) {
      controller.setPlaybackSpeed(chosenSpeed);
    }

    if (_latestValue.isPlaying) {
      _startHideTimer();
    }
  }

  Widget _buildPosition(Color? iconColor) {
    final position = _latestValue.position;
    final duration = _latestValue.duration;

    return RichText(
      text: TextSpan(
        text: '${formatDuration(position)} ',
        children: <InlineSpan>[
          TextSpan(
            text: '/ ${formatDuration(duration)}',
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

  Widget _buildSubtitleToggle() {
    //if don't have subtitle hiden button
    if (chewieController.subtitle?.isEmpty ?? true) {
      return const SizedBox();
    }
    return GestureDetector(
      onTap: _onSubtitleTap,
      child: Container(
        height: barHeight,
        color: Colors.transparent,
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Icon(
          _subtitleOn
              ? Icons.closed_caption
              : Icons.closed_caption_off_outlined,
          color: _subtitleOn ? Colors.white : Colors.grey[700],
        ),
      ),
    );
  }

  void _onSubtitleTap() {
    setState(() {
      _subtitleOn = !_subtitleOn;
    });
  }

  void _cancelAndRestartTimer() {
    _hideTimer?.cancel();
    _startHideTimer();

    setState(() {
      notifier.hideStuff = false;
      _displayTapped = true;
    });
  }

  Future<void> _initialize() async {
    _subtitleOn =
        chewieController.showSubtitles &&
        (chewieController.subtitle?.isNotEmpty ?? false);
    controller.addListener(_updateState);

    _updateState();

    if (controller.value.isPlaying || chewieController.autoPlay) {
      _startHideTimer();
    }

    if (chewieController.showControlsOnInitialize) {
      _initTimer = Timer(const Duration(milliseconds: 200), () {
        setState(() {
          notifier.hideStuff = false;
        });
      });
    }
  }

  void _onExpandCollapse() {
    setState(() {
      notifier.hideStuff = true;

      chewieController.toggleFullScreen();
      _showAfterExpandCollapseTimer = Timer(
        const Duration(milliseconds: 300),
        () {
          setState(() {
            _cancelAndRestartTimer();
          });
        },
      );
    });
  }

  void _playPause() {
    final bool isFinished =
        (_latestValue.position >= _latestValue.duration) &&
        _latestValue.duration.inSeconds > 0;

    setState(() {
      if (controller.value.isPlaying) {
        notifier.hideStuff = false;
        _hideTimer?.cancel();
        controller.pause();
      } else {
        _cancelAndRestartTimer();

        if (!controller.value.isInitialized) {
          controller.initialize().then((_) {
            controller.play();
          });
        } else {
          if (isFinished) {
            controller.seekTo(Duration.zero);
          }
          controller.play();
        }
      }
    });
  }

  void _seekRelative(Duration relativeSeek) {
    _cancelAndRestartTimer();
    final position = _latestValue.position + relativeSeek;
    final duration = _latestValue.duration;

    if (position < Duration.zero) {
      controller.seekTo(Duration.zero);
    } else if (position > duration) {
      controller.seekTo(duration);
    } else {
      controller.seekTo(position);
    }
  }

  void _seekBackward() {
    _seekRelative(const Duration(seconds: -10));
  }

  void _seekForward() {
    _seekRelative(const Duration(seconds: 10));
  }

  void _startHideTimer() {
    final hideControlsTimer = chewieController.hideControlsTimer.isNegative
        ? ChewieController.defaultHideControlsTimer
        : chewieController.hideControlsTimer;
    _hideTimer = Timer(hideControlsTimer, () {
      setState(() {
        notifier.hideStuff = true;
      });
    });
  }

  void _bufferingTimerTimeout() {
    _displayBufferingIndicator = true;
    if (mounted) {
      setState(() {});
    }
  }

  void _updateState() {
    if (!mounted) return;

    final bool buffering = getIsBuffering(controller);

    // display the progress bar indicator only after the buffering delay if it has been set
    if (chewieController.progressIndicatorDelay != null) {
      if (buffering) {
        _bufferingDisplayTimer ??= Timer(
          chewieController.progressIndicatorDelay!,
          _bufferingTimerTimeout,
        );
      } else {
        _bufferingDisplayTimer?.cancel();
        _bufferingDisplayTimer = null;
        _displayBufferingIndicator = false;
      }
    } else {
      _displayBufferingIndicator = buffering;
    }

    setState(() {
      _latestValue = controller.value;
      _subtitlesPosition = controller.value.position;
    });
  }

  Widget _buildProgressBar() {
    return Expanded(
      child: MaterialVideoProgressBar(
        barHeight: 2.5,
        controller,
        onDragStart: () {
          setState(() {
            _dragging = true;
          });

          _hideTimer?.cancel();
        },
        onDragUpdate: () {
          _hideTimer?.cancel();
        },
        onDragEnd: () {
          setState(() {
            _dragging = false;
          });

          _startHideTimer();
        },
        colors:
            chewieController.materialProgressColors ??
            ChewieProgressColors(
              playedColor: Theme.of(context).colorScheme.secondary,
              handleColor: Theme.of(context).colorScheme.secondary,
              bufferedColor: Theme.of(
                context,
              ).colorScheme.surface.withValues(alpha: 0.5),
              backgroundColor: Theme.of(
                context,
              ).disabledColor.withValues(alpha: .5),
            ),
        draggableProgressBar: chewieController.draggableProgressBar,
      ),
    );
  }
}

class CloseButton extends ConsumerWidget {
  const CloseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fadeController = ref.watch(fadeAnimationProvider);
    return IconButton(
      onPressed: () {
        final playingDataNotifier = ref.read(playingDataProvider.notifier);
        playingDataNotifier.set(playingData: null);
        fadeController?.forward();
      },
      icon: Icon(Icons.close),
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith((states) {
          return Colors.black54;
        }),
      ),
    );
  }
}
