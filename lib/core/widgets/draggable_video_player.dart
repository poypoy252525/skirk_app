import 'package:flutter/material.dart';
import 'package:skirk_app/features/video_player/presentation/providers/playing_data_provider/playing_data_provider.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/video_player_widget.dart';

class DraggableVideo extends StatelessWidget {
  const DraggableVideo({
    super.key,
    required this.borderRadius,
    required this.height,
    required this.opacity,
    required this.playingData,
    required this.scale,
  });

  final Animation<double> opacity;
  final Animation<double> borderRadius;
  final double height;
  final Data? playingData;
  final Animation<double> scale;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity.value,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius.value),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(offset: Offset(-12, 12), color: Colors.black),
            ],
          ),
          width: MediaQuery.of(context).size.width * scale.value,
          height: height,
          child: playingData != null
              ? VideoPlayerWidget(
                  key: ValueKey(playingData!.episode.id),
                  episodeId: playingData!.episode.id,
                )
              : Container(
                  color: Colors.black,
                  child: Center(child: Text('No episode data.')),
                ),
        ),
      ),
    );
  }
}
