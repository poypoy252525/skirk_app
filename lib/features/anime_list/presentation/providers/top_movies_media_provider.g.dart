// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_movies_media_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$topMoviesMediaHash() => r'5aa316678594521792940aecfd422bc3c3aa3e7a';

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

/// See also [topMoviesMedia].
@ProviderFor(topMoviesMedia)
const topMoviesMediaProvider = TopMoviesMediaFamily();

/// See also [topMoviesMedia].
class TopMoviesMediaFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [topMoviesMedia].
  const TopMoviesMediaFamily();

  /// See also [topMoviesMedia].
  TopMoviesMediaProvider call(int page, int perPage) {
    return TopMoviesMediaProvider(page, perPage);
  }

  @override
  TopMoviesMediaProvider getProviderOverride(
    covariant TopMoviesMediaProvider provider,
  ) {
    return call(provider.page, provider.perPage);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'topMoviesMediaProvider';
}

/// See also [topMoviesMedia].
class TopMoviesMediaProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [topMoviesMedia].
  TopMoviesMediaProvider(int page, int perPage)
    : this._internal(
        (ref) => topMoviesMedia(ref as TopMoviesMediaRef, page, perPage),
        from: topMoviesMediaProvider,
        name: r'topMoviesMediaProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$topMoviesMediaHash,
        dependencies: TopMoviesMediaFamily._dependencies,
        allTransitiveDependencies:
            TopMoviesMediaFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  TopMoviesMediaProvider._internal(
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
    FutureOr<List<Media>> Function(TopMoviesMediaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TopMoviesMediaProvider._internal(
        (ref) => create(ref as TopMoviesMediaRef),
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
    return _TopMoviesMediaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TopMoviesMediaProvider &&
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
mixin TopMoviesMediaRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _TopMoviesMediaProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with TopMoviesMediaRef {
  _TopMoviesMediaProviderElement(super.provider);

  @override
  int get page => (origin as TopMoviesMediaProvider).page;
  @override
  int get perPage => (origin as TopMoviesMediaProvider).perPage;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
