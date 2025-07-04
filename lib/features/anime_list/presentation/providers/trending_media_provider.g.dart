// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_media_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaRepositoryHash() => r'dafe3555c1ec71e843222a7121d0dad65aa450ff';

/// See also [mediaRepository].
@ProviderFor(mediaRepository)
final mediaRepositoryProvider = AutoDisposeProvider<MediaRepository>.internal(
  mediaRepository,
  name: r'mediaRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mediaRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MediaRepositoryRef = AutoDisposeProviderRef<MediaRepository>;
String _$getTrendingMediaHash() => r'85d56d66e05557a7eb0b981d22f3bc5681e962b5';

/// See also [getTrendingMedia].
@ProviderFor(getTrendingMedia)
final getTrendingMediaProvider = AutoDisposeProvider<GetTrendingMedia>.internal(
  getTrendingMedia,
  name: r'getTrendingMediaProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getTrendingMediaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetTrendingMediaRef = AutoDisposeProviderRef<GetTrendingMedia>;
String _$trendingMediaHash() => r'fbb0b9e4f1bc4e3c73c8b20ad8d20e28ef35b1ef';

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

/// See also [trendingMedia].
@ProviderFor(trendingMedia)
const trendingMediaProvider = TrendingMediaFamily();

/// See also [trendingMedia].
class TrendingMediaFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [trendingMedia].
  const TrendingMediaFamily();

  /// See also [trendingMedia].
  TrendingMediaProvider call({required int page, required int perPage}) {
    return TrendingMediaProvider(page: page, perPage: perPage);
  }

  @override
  TrendingMediaProvider getProviderOverride(
    covariant TrendingMediaProvider provider,
  ) {
    return call(page: provider.page, perPage: provider.perPage);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trendingMediaProvider';
}

/// See also [trendingMedia].
class TrendingMediaProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [trendingMedia].
  TrendingMediaProvider({required int page, required int perPage})
    : this._internal(
        (ref) => trendingMedia(
          ref as TrendingMediaRef,
          page: page,
          perPage: perPage,
        ),
        from: trendingMediaProvider,
        name: r'trendingMediaProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$trendingMediaHash,
        dependencies: TrendingMediaFamily._dependencies,
        allTransitiveDependencies:
            TrendingMediaFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  TrendingMediaProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.perPage,
  }) : super.internal();

  final int page;
  final int perPage;

  @override
  Override overrideWith(
    FutureOr<List<Media>> Function(TrendingMediaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrendingMediaProvider._internal(
        (ref) => create(ref as TrendingMediaRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        perPage: perPage,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Media>> createElement() {
    return _TrendingMediaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TrendingMediaProvider &&
        other.page == page &&
        other.perPage == perPage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TrendingMediaRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _TrendingMediaProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with TrendingMediaRef {
  _TrendingMediaProviderElement(super.provider);

  @override
  int get page => (origin as TrendingMediaProvider).page;
  @override
  int get perPage => (origin as TrendingMediaProvider).perPage;
}

String _$mediaListHash() => r'090af76620b5f97faf65fc0aede961c90ff8b02e';

/// See also [MediaList].
@ProviderFor(MediaList)
final mediaListProvider =
    AutoDisposeAsyncNotifierProvider<MediaList, List<Media>>.internal(
      MediaList.new,
      name: r'mediaListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$mediaListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$MediaList = AutoDisposeAsyncNotifier<List<Media>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
