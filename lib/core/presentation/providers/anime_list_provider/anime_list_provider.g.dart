// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trendingTVShowsHash() => r'2247aa243d6e5ab1f36dcebc530e408af0191fbc';

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

/// See also [trendingTVShows].
@ProviderFor(trendingTVShows)
const trendingTVShowsProvider = TrendingTVShowsFamily();

/// See also [trendingTVShows].
class TrendingTVShowsFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [trendingTVShows].
  const TrendingTVShowsFamily();

  /// See also [trendingTVShows].
  TrendingTVShowsProvider call({int page = 1, int perPage = 10}) {
    return TrendingTVShowsProvider(page: page, perPage: perPage);
  }

  @override
  TrendingTVShowsProvider getProviderOverride(
    covariant TrendingTVShowsProvider provider,
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
  String? get name => r'trendingTVShowsProvider';
}

/// See also [trendingTVShows].
class TrendingTVShowsProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [trendingTVShows].
  TrendingTVShowsProvider({int page = 1, int perPage = 10})
    : this._internal(
        (ref) => trendingTVShows(
          ref as TrendingTVShowsRef,
          page: page,
          perPage: perPage,
        ),
        from: trendingTVShowsProvider,
        name: r'trendingTVShowsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$trendingTVShowsHash,
        dependencies: TrendingTVShowsFamily._dependencies,
        allTransitiveDependencies:
            TrendingTVShowsFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  TrendingTVShowsProvider._internal(
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
    FutureOr<List<Media>> Function(TrendingTVShowsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrendingTVShowsProvider._internal(
        (ref) => create(ref as TrendingTVShowsRef),
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
    return _TrendingTVShowsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TrendingTVShowsProvider &&
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
mixin TrendingTVShowsRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _TrendingTVShowsProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with TrendingTVShowsRef {
  _TrendingTVShowsProviderElement(super.provider);

  @override
  int get page => (origin as TrendingTVShowsProvider).page;
  @override
  int get perPage => (origin as TrendingTVShowsProvider).perPage;
}

String _$allTimePopularHash() => r'fc80b5551dbcdc35dafe7737d54d99a078b52ed9';

/// See also [allTimePopular].
@ProviderFor(allTimePopular)
const allTimePopularProvider = AllTimePopularFamily();

/// See also [allTimePopular].
class AllTimePopularFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [allTimePopular].
  const AllTimePopularFamily();

  /// See also [allTimePopular].
  AllTimePopularProvider call({int page = 1, int perPage = 10}) {
    return AllTimePopularProvider(page: page, perPage: perPage);
  }

  @override
  AllTimePopularProvider getProviderOverride(
    covariant AllTimePopularProvider provider,
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
  String? get name => r'allTimePopularProvider';
}

/// See also [allTimePopular].
class AllTimePopularProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [allTimePopular].
  AllTimePopularProvider({int page = 1, int perPage = 10})
    : this._internal(
        (ref) => allTimePopular(
          ref as AllTimePopularRef,
          page: page,
          perPage: perPage,
        ),
        from: allTimePopularProvider,
        name: r'allTimePopularProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$allTimePopularHash,
        dependencies: AllTimePopularFamily._dependencies,
        allTransitiveDependencies:
            AllTimePopularFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  AllTimePopularProvider._internal(
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
    FutureOr<List<Media>> Function(AllTimePopularRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AllTimePopularProvider._internal(
        (ref) => create(ref as AllTimePopularRef),
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
    return _AllTimePopularProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AllTimePopularProvider &&
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
mixin AllTimePopularRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _AllTimePopularProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with AllTimePopularRef {
  _AllTimePopularProviderElement(super.provider);

  @override
  int get page => (origin as AllTimePopularProvider).page;
  @override
  int get perPage => (origin as AllTimePopularProvider).perPage;
}

String _$popularMoviesHash() => r'37b5e748a07ffe238773443811f03ff41559f764';

/// See also [popularMovies].
@ProviderFor(popularMovies)
const popularMoviesProvider = PopularMoviesFamily();

/// See also [popularMovies].
class PopularMoviesFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [popularMovies].
  const PopularMoviesFamily();

  /// See also [popularMovies].
  PopularMoviesProvider call({int page = 1, int perPage = 10}) {
    return PopularMoviesProvider(page: page, perPage: perPage);
  }

  @override
  PopularMoviesProvider getProviderOverride(
    covariant PopularMoviesProvider provider,
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
  String? get name => r'popularMoviesProvider';
}

/// See also [popularMovies].
class PopularMoviesProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [popularMovies].
  PopularMoviesProvider({int page = 1, int perPage = 10})
    : this._internal(
        (ref) => popularMovies(
          ref as PopularMoviesRef,
          page: page,
          perPage: perPage,
        ),
        from: popularMoviesProvider,
        name: r'popularMoviesProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$popularMoviesHash,
        dependencies: PopularMoviesFamily._dependencies,
        allTransitiveDependencies:
            PopularMoviesFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  PopularMoviesProvider._internal(
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
    FutureOr<List<Media>> Function(PopularMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PopularMoviesProvider._internal(
        (ref) => create(ref as PopularMoviesRef),
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
    return _PopularMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularMoviesProvider &&
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
mixin PopularMoviesRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _PopularMoviesProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with PopularMoviesRef {
  _PopularMoviesProviderElement(super.provider);

  @override
  int get page => (origin as PopularMoviesProvider).page;
  @override
  int get perPage => (origin as PopularMoviesProvider).perPage;
}

String _$popularThisSeasonHash() => r'2856473a84c263eb3713e947b74b1cc81bf2f272';

/// See also [popularThisSeason].
@ProviderFor(popularThisSeason)
const popularThisSeasonProvider = PopularThisSeasonFamily();

/// See also [popularThisSeason].
class PopularThisSeasonFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [popularThisSeason].
  const PopularThisSeasonFamily();

  /// See also [popularThisSeason].
  PopularThisSeasonProvider call({int page = 1, int perPage = 10}) {
    return PopularThisSeasonProvider(page: page, perPage: perPage);
  }

  @override
  PopularThisSeasonProvider getProviderOverride(
    covariant PopularThisSeasonProvider provider,
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
  String? get name => r'popularThisSeasonProvider';
}

/// See also [popularThisSeason].
class PopularThisSeasonProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [popularThisSeason].
  PopularThisSeasonProvider({int page = 1, int perPage = 10})
    : this._internal(
        (ref) => popularThisSeason(
          ref as PopularThisSeasonRef,
          page: page,
          perPage: perPage,
        ),
        from: popularThisSeasonProvider,
        name: r'popularThisSeasonProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$popularThisSeasonHash,
        dependencies: PopularThisSeasonFamily._dependencies,
        allTransitiveDependencies:
            PopularThisSeasonFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  PopularThisSeasonProvider._internal(
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
    FutureOr<List<Media>> Function(PopularThisSeasonRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PopularThisSeasonProvider._internal(
        (ref) => create(ref as PopularThisSeasonRef),
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
    return _PopularThisSeasonProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularThisSeasonProvider &&
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
mixin PopularThisSeasonRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _PopularThisSeasonProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with PopularThisSeasonRef {
  _PopularThisSeasonProviderElement(super.provider);

  @override
  int get page => (origin as PopularThisSeasonProvider).page;
  @override
  int get perPage => (origin as PopularThisSeasonProvider).perPage;
}

String _$topRatedTVShowsHash() => r'acea6edc2728021d0e53488993f0730da5634ed8';

/// See also [topRatedTVShows].
@ProviderFor(topRatedTVShows)
const topRatedTVShowsProvider = TopRatedTVShowsFamily();

/// See also [topRatedTVShows].
class TopRatedTVShowsFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [topRatedTVShows].
  const TopRatedTVShowsFamily();

  /// See also [topRatedTVShows].
  TopRatedTVShowsProvider call({int page = 1, int perPage = 10}) {
    return TopRatedTVShowsProvider(page: page, perPage: perPage);
  }

  @override
  TopRatedTVShowsProvider getProviderOverride(
    covariant TopRatedTVShowsProvider provider,
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
  String? get name => r'topRatedTVShowsProvider';
}

/// See also [topRatedTVShows].
class TopRatedTVShowsProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [topRatedTVShows].
  TopRatedTVShowsProvider({int page = 1, int perPage = 10})
    : this._internal(
        (ref) => topRatedTVShows(
          ref as TopRatedTVShowsRef,
          page: page,
          perPage: perPage,
        ),
        from: topRatedTVShowsProvider,
        name: r'topRatedTVShowsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$topRatedTVShowsHash,
        dependencies: TopRatedTVShowsFamily._dependencies,
        allTransitiveDependencies:
            TopRatedTVShowsFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  TopRatedTVShowsProvider._internal(
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
    FutureOr<List<Media>> Function(TopRatedTVShowsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TopRatedTVShowsProvider._internal(
        (ref) => create(ref as TopRatedTVShowsRef),
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
    return _TopRatedTVShowsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TopRatedTVShowsProvider &&
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
mixin TopRatedTVShowsRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _TopRatedTVShowsProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with TopRatedTVShowsRef {
  _TopRatedTVShowsProviderElement(super.provider);

  @override
  int get page => (origin as TopRatedTVShowsProvider).page;
  @override
  int get perPage => (origin as TopRatedTVShowsProvider).perPage;
}

String _$latestTVShowsHash() => r'a4d113c81dc2723bf0c87bd9276775dbe0ca9bd4';

/// See also [latestTVShows].
@ProviderFor(latestTVShows)
const latestTVShowsProvider = LatestTVShowsFamily();

/// See also [latestTVShows].
class LatestTVShowsFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [latestTVShows].
  const LatestTVShowsFamily();

  /// See also [latestTVShows].
  LatestTVShowsProvider call({int page = 1, int perPage = 10}) {
    return LatestTVShowsProvider(page: page, perPage: perPage);
  }

  @override
  LatestTVShowsProvider getProviderOverride(
    covariant LatestTVShowsProvider provider,
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
  String? get name => r'latestTVShowsProvider';
}

/// See also [latestTVShows].
class LatestTVShowsProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [latestTVShows].
  LatestTVShowsProvider({int page = 1, int perPage = 10})
    : this._internal(
        (ref) => latestTVShows(
          ref as LatestTVShowsRef,
          page: page,
          perPage: perPage,
        ),
        from: latestTVShowsProvider,
        name: r'latestTVShowsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$latestTVShowsHash,
        dependencies: LatestTVShowsFamily._dependencies,
        allTransitiveDependencies:
            LatestTVShowsFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  LatestTVShowsProvider._internal(
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
    FutureOr<List<Media>> Function(LatestTVShowsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LatestTVShowsProvider._internal(
        (ref) => create(ref as LatestTVShowsRef),
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
    return _LatestTVShowsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LatestTVShowsProvider &&
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
mixin LatestTVShowsRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _LatestTVShowsProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with LatestTVShowsRef {
  _LatestTVShowsProviderElement(super.provider);

  @override
  int get page => (origin as LatestTVShowsProvider).page;
  @override
  int get perPage => (origin as LatestTVShowsProvider).perPage;
}

String _$mediaDetailsHash() => r'f27b76c9b34f4ffa70216c145b19d63d9b80f4e9';

/// See also [mediaDetails].
@ProviderFor(mediaDetails)
const mediaDetailsProvider = MediaDetailsFamily();

/// See also [mediaDetails].
class MediaDetailsFamily extends Family<AsyncValue<MediaDetails>> {
  /// See also [mediaDetails].
  const MediaDetailsFamily();

  /// See also [mediaDetails].
  MediaDetailsProvider call({required int mediaId}) {
    return MediaDetailsProvider(mediaId: mediaId);
  }

  @override
  MediaDetailsProvider getProviderOverride(
    covariant MediaDetailsProvider provider,
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
  String? get name => r'mediaDetailsProvider';
}

/// See also [mediaDetails].
class MediaDetailsProvider extends AutoDisposeFutureProvider<MediaDetails> {
  /// See also [mediaDetails].
  MediaDetailsProvider({required int mediaId})
    : this._internal(
        (ref) => mediaDetails(ref as MediaDetailsRef, mediaId: mediaId),
        from: mediaDetailsProvider,
        name: r'mediaDetailsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$mediaDetailsHash,
        dependencies: MediaDetailsFamily._dependencies,
        allTransitiveDependencies:
            MediaDetailsFamily._allTransitiveDependencies,
        mediaId: mediaId,
      );

  MediaDetailsProvider._internal(
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
    FutureOr<MediaDetails> Function(MediaDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MediaDetailsProvider._internal(
        (ref) => create(ref as MediaDetailsRef),
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
  AutoDisposeFutureProviderElement<MediaDetails> createElement() {
    return _MediaDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaDetailsProvider && other.mediaId == mediaId;
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
mixin MediaDetailsRef on AutoDisposeFutureProviderRef<MediaDetails> {
  /// The parameter `mediaId` of this provider.
  int get mediaId;
}

class _MediaDetailsProviderElement
    extends AutoDisposeFutureProviderElement<MediaDetails>
    with MediaDetailsRef {
  _MediaDetailsProviderElement(super.provider);

  @override
  int get mediaId => (origin as MediaDetailsProvider).mediaId;
}

String _$searchHash() => r'5bd544a565a2034890160cf2194248d6184d2d40';

/// See also [search].
@ProviderFor(search)
const searchProvider = SearchFamily();

/// See also [search].
class SearchFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [search].
  const SearchFamily();

  /// See also [search].
  SearchProvider call({required String query, int page = 1, int perPage = 12}) {
    return SearchProvider(query: query, page: page, perPage: perPage);
  }

  @override
  SearchProvider getProviderOverride(covariant SearchProvider provider) {
    return call(
      query: provider.query,
      page: provider.page,
      perPage: provider.perPage,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchProvider';
}

/// See also [search].
class SearchProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [search].
  SearchProvider({required String query, int page = 1, int perPage = 12})
    : this._internal(
        (ref) => search(
          ref as SearchRef,
          query: query,
          page: page,
          perPage: perPage,
        ),
        from: searchProvider,
        name: r'searchProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$searchHash,
        dependencies: SearchFamily._dependencies,
        allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
        query: query,
        page: page,
        perPage: perPage,
      );

  SearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.page,
    required this.perPage,
  }) : super.internal();

  final String query;
  final int page;
  final int perPage;

  @override
  Override overrideWith(
    FutureOr<List<Media>> Function(SearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchProvider._internal(
        (ref) => create(ref as SearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        page: page,
        perPage: perPage,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Media>> createElement() {
    return _SearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProvider &&
        other.query == query &&
        other.page == page &&
        other.perPage == perPage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _SearchProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with SearchRef {
  _SearchProviderElement(super.provider);

  @override
  String get query => (origin as SearchProvider).query;
  @override
  int get page => (origin as SearchProvider).page;
  @override
  int get perPage => (origin as SearchProvider).perPage;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
