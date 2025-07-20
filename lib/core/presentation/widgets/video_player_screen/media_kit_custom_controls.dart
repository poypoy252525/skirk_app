import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/presentation/providers/minimize_video_player_controller/minimize_video_player_controller_provider.dart';
import 'package:skirk_app/core/utils.dart';

class MediaKitCustomControls extends ConsumerStatefulWidget {
  const MediaKitCustomControls({super.key, required this.videoState});

  final VideoState videoState;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomControlsState();
}

class _CustomControlsState extends ConsumerState<MediaKitCustomControls> {
  bool showControls = false;
  bool mountedControls = true;
  Timer? _hideTimer;
  Duration opacityDuration = Duration(milliseconds: 200);
  bool show2xSpeed = false;
  bool showMinimizeControls = false;

  late Player _player;
  late VideoState _videoState;

  @override
  void initState() {
    super.initState();
    _videoState = widget.videoState;
    _player = widget.videoState.widget.controller.player;
    final minimizeVideoPlayerController = ref.read(
      minimizeVideoPlayerControllerProvider,
    );

    debugPrint('hello there! $minimizeVideoPlayerController');

    minimizeVideoPlayerController?.addStatusListener((status) {
      if (!mounted) return;
      debugPrint('hello world! dfddf');
      setState(() {
        if (status.isDismissed) {
          mountedControls = true;
        } else {
          mountedControls = false;
        }
        if (status.isCompleted) {
          showMinimizeControls = true;
        } else {
          debugPrint('$status');
          showMinimizeControls = false;
        }
      });
    });
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
                if (!_player.state.playing) return;
                _player.setRate(2.0);
                setState(() {
                  mountedControls = false;
                  show2xSpeed = true;
                });
              },
              onLongPressEnd: (details) {
                _player.setRate(1.0);
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
                            bottom: 0,
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
              child: MinimizedControls(player: _player, state: _videoState),
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

    final isPlaying = _player.state.playing;
    final isFinished = _player.state.position >= _player.state.duration;
    return !_player.state.buffering
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
                        _player.pause();
                      } else {
                        if (isFinished) {
                          _player.seek(Duration.zero);
                        }
                        _player.play();
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
      padding: _videoState.isFullscreen()
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
                        _videoState.toggleFullscreen();
                      },
                      icon: Icon(
                        _videoState.isFullscreen()
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
            child: AnimatedOpacity(
              duration: opacityDuration,
              opacity: showControls || !_videoState.isFullscreen() ? 1 : 0,
              child: MaterialSeekBar(),
            ),
          ),
          // if (_videoState.isFullscreen())
          //   Flexible(
          //     child: AnimatedOpacity(
          //       opacity: showControls ? 1 : 0,
          //       duration: opacityDuration,
          //       child: SizedBox(height: 50, child: Row(children: [])),
          //     ),
          //   ),
        ],
      ),
    );
  }

  Widget _buildActionBar() {
    return Padding(
      padding: _videoState.isFullscreen()
          ? const EdgeInsets.symmetric(horizontal: 12)
          : const EdgeInsets.all(0),
      child: SizedBox(
        height: 100,
        child: AnimatedOpacity(
          duration: opacityDuration,
          opacity: showControls ? 1 : 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_videoState.isFullscreen())
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Episode title',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Episode 1',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withValues(alpha: 0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              IconButton(onPressed: () {}, icon: Icon(Icons.closed_caption)),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
            ],
          ),
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
        text: '${formatDuration(_player.state.position)} ',
        children: <InlineSpan>[
          TextSpan(
            text: '/ ${formatDuration(_player.state.duration)}',
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

class MinimizedControls extends StatefulWidget {
  const MinimizedControls({
    super.key,
    required this.player,
    required this.state,
  });

  final Player player;
  final VideoState state;

  @override
  State<MinimizedControls> createState() => _MinimizedControlsState();
}

class _MinimizedControlsState extends State<MinimizedControls>
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

    // widget.chewieController.videoPlayerController.addListener(_updateButtons);
  }

  @override
  void dispose() {
    timer.cancel();
    // widget.chewieController.videoPlayerController.removeListener(
    //   _updateButtons,
    // );
    controller.dispose();
    super.dispose();
  }

  void _updateButtons() {
    if (!mounted) return;
    if (widget.player.state.playing) {
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
    final bgColor = ColorTween(begin: Colors.black54, end: Colors.transparent);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: [
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: SizedBox(
            //     height: 2,
            //     child: MaterialVideoProgressBar(
            //       chewieController.videoPlayerController,
            //       barHeight: 2,
            //       handleHeight: 0,
            //       colors: ChewieProgressColors(
            //         backgroundColor: Colors.white.withValues(alpha: 0.4),
            //         bufferedColor: Colors.white.withValues(alpha: 0.0),
            //       ),
            //       draggableProgressBar: false,
            //     ),
            //   ),
            // ),
            Positioned(
              top: 0,
              left: 0,
              child: IconButton(
                onPressed: () {
                  widget.player.playOrPause();
                },
                color: Colors.white,
                icon: Icon(
                  widget.player.state.playing ? Icons.pause : Icons.play_arrow,
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
