import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/core/usecases/minimize_player_screen.dart';

part 'minimize_player_screen_provider.g.dart';

@riverpod
void minimizePlayerScreen(Ref ref) {
  final usecase = MinimizePlayerScreen(ref: ref);
  usecase.execute();
}
