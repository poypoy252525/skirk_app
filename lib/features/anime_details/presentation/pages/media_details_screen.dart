import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/anime_details/presentation/providers/media_details_provider.dart';
import 'package:skirk_app/features/anime_details/presentation/widgets/media_details_body.dart';

class MediaDetailsScreen extends ConsumerStatefulWidget {
  const MediaDetailsScreen({super.key, required this.mediaId});

  final String mediaId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MediaDetailsScreenState();
}

class _MediaDetailsScreenState extends ConsumerState<MediaDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaDetailsAsync = ref.watch(
      getMediaDetailsProvider(int.parse(widget.mediaId)),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          mediaDetailsAsync.hasValue ? mediaDetailsAsync.value!.title : '',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Center(
        child: mediaDetailsAsync.when(
          data: (media) => MediaDetailsBody(mediaDetails: media),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
