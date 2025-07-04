// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_media_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$topRatedMediaHash() => r'2e40e3135189470dc7c10eda3ea7c43ddb958570';

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

/// See also [topRatedMedia].
@ProviderFor(topRatedMedia)
const topRatedMediaProvider = TopRatedMediaFamily();

/// See also [topRatedMedia].
class TopRatedMediaFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [topRatedMedia].
  const TopRatedMediaFamily();

  /// See also [topRatedMedia].
  TopRatedMediaProvider call({required int page, required int perPage}) {
    return TopRatedMediaProvider(page: page, perPage: perPage);
  }

  @override
  TopRatedMediaProvider getProviderOverride(
    covariant TopRatedMediaProvider provider,
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
  String? get name => r'topRatedMediaProvider';
}

/// See also [topRatedMedia].
class TopRatedMediaProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [topRatedMedia].
  TopRatedMediaProvider({required int page, required int perPage})
    : this._internal(
        (ref) => topRatedMedia(
          ref as TopRatedMediaRef,
          page: page,
          perPage: perPage,
        ),
        from: topRatedMediaProvider,
        name: r'topRatedMediaProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$topRatedMediaHash,
        dependencies: TopRatedMediaFamily._dependencies,
        allTransitiveDependencies:
            TopRatedMediaFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  TopRatedMediaProvider._internal(
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
    FutureOr<List<Media>> Function(TopRatedMediaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TopRatedMediaProvider._internal(
        (ref) => create(ref as TopRatedMediaRef),
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
    return _TopRatedMediaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TopRatedMediaProvider &&
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
mixin TopRatedMediaRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _TopRatedMediaProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with TopRatedMediaRef {
  _TopRatedMediaProviderElement(super.provider);

  @override
  int get page => (origin as TopRatedMediaProvider).page;
  @override
  int get perPage => (origin as TopRatedMediaProvider).perPage;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
