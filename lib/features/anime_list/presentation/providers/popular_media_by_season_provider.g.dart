// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_media_by_season_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$popularMediaBySeasonHash() =>
    r'91880dd278fe3888bbf2504a26aa42c6fd8039d9';

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

/// See also [popularMediaBySeason].
@ProviderFor(popularMediaBySeason)
const popularMediaBySeasonProvider = PopularMediaBySeasonFamily();

/// See also [popularMediaBySeason].
class PopularMediaBySeasonFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [popularMediaBySeason].
  const PopularMediaBySeasonFamily();

  /// See also [popularMediaBySeason].
  PopularMediaBySeasonProvider call({required int page, required int perPage}) {
    return PopularMediaBySeasonProvider(page: page, perPage: perPage);
  }

  @override
  PopularMediaBySeasonProvider getProviderOverride(
    covariant PopularMediaBySeasonProvider provider,
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
  String? get name => r'popularMediaBySeasonProvider';
}

/// See also [popularMediaBySeason].
class PopularMediaBySeasonProvider
    extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [popularMediaBySeason].
  PopularMediaBySeasonProvider({required int page, required int perPage})
    : this._internal(
        (ref) => popularMediaBySeason(
          ref as PopularMediaBySeasonRef,
          page: page,
          perPage: perPage,
        ),
        from: popularMediaBySeasonProvider,
        name: r'popularMediaBySeasonProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$popularMediaBySeasonHash,
        dependencies: PopularMediaBySeasonFamily._dependencies,
        allTransitiveDependencies:
            PopularMediaBySeasonFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  PopularMediaBySeasonProvider._internal(
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
    FutureOr<List<Media>> Function(PopularMediaBySeasonRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PopularMediaBySeasonProvider._internal(
        (ref) => create(ref as PopularMediaBySeasonRef),
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
    return _PopularMediaBySeasonProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularMediaBySeasonProvider &&
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
mixin PopularMediaBySeasonRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _PopularMediaBySeasonProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with PopularMediaBySeasonRef {
  _PopularMediaBySeasonProviderElement(super.provider);

  @override
  int get page => (origin as PopularMediaBySeasonProvider).page;
  @override
  int get perPage => (origin as PopularMediaBySeasonProvider).perPage;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
