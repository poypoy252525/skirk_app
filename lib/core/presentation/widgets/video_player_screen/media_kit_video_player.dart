import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/media_kit_custom_controls.dart';

class MediaKitVideoPlayer extends ConsumerStatefulWidget {
  const MediaKitVideoPlayer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MediaKitVideoPlayerState();
}

class _MediaKitVideoPlayerState extends ConsumerState<MediaKitVideoPlayer> {
  final Player player = Player();

  @override
  void initState() {
    super.initState();
    player.open(
      Media(
        'https://vault-99.kwikie.ru/stream/99/01/fb9fb859b0c58e666a1f71631206ebfaaf0d7a05add2fe1c934cb4a0d8f22122/uwu.m3u8',
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialVideoControlsTheme(
      fullscreen: MaterialVideoControlsThemeData(
        seekBarMargin: EdgeInsets.all(0),
      ),
      normal: MaterialVideoControlsThemeData(),
      child: Video(
        controller: VideoController(player),
        controls: (state) {
          return MediaKitCustomControls(videoState: state);
        },
      ),
    );
  }
}
