// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$episodeListHash() => r'40dcfd13102ddc60e01d5140f967765cd462530c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [episodeList].
@ProviderFor(episodeList)
const episodeListProvider = EpisodeListFamily();

/// See also [episodeList].
class EpisodeListFamily extends Family<AsyncValue<List<Episode>>> {
  /// See also [episodeList].
  const EpisodeListFamily();

  /// See also [episodeList].
  EpisodeListProvider call({required int mediaId}) {
    return EpisodeListProvider(mediaId: mediaId);
  }

  @override
  EpisodeListProvider getProviderOverride(
    covariant EpisodeListProvider provider,
  ) {
    return call(mediaId: provider.mediaId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'episodeListProvider';
}

/// See also [episodeList].
class EpisodeListProvider extends AutoDisposeFutureProvider<List<Episode>> {
  /// See also [episodeList].
  EpisodeListProvider({required int mediaId})
    : this._internal(
        (ref) => episodeList(ref as EpisodeListRef, mediaId: mediaId),
        from: episodeListProvider,
        name: r'episodeListProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$episodeListHash,
        dependencies: EpisodeListFamily._dependencies,
        allTransitiveDependencies: EpisodeListFamily._allTransitiveDependencies,
        mediaId: mediaId,
      );

  EpisodeListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mediaId,
  }) : super.internal();

  final int mediaId;

  @override
  Override overrideWith(
    FutureOr<List<Episode>> Function(EpisodeListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EpisodeListProvider._internal(
        (ref) => create(ref as EpisodeListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mediaId: mediaId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Episode>> createElement() {
    return _EpisodeListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EpisodeListProvider && other.mediaId == mediaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mediaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EpisodeListRef on AutoDisposeFutureProviderRef<List<Episode>> {
  /// The parameter `mediaId` of this provider.
  int get mediaId;
}

class _EpisodeListProviderElement
    extends AutoDisposeFutureProviderElement<List<Episode>>
    with EpisodeListRef {
  _EpisodeListProviderElement(super.provider);

  @override
  int get mediaId => (origin as EpisodeListProvider).mediaId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
