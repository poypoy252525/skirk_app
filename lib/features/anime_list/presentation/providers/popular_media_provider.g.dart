// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_media_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$popularMediaHash() => r'2d5dc8459633d8038582ad1694c297f977b99713';

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

/// See also [popularMedia].
@ProviderFor(popularMedia)
const popularMediaProvider = PopularMediaFamily();

/// See also [popularMedia].
class PopularMediaFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [popularMedia].
  const PopularMediaFamily();

  /// See also [popularMedia].
  PopularMediaProvider call({required int page, required int perPage}) {
    return PopularMediaProvider(page: page, perPage: perPage);
  }

  @override
  PopularMediaProvider getProviderOverride(
    covariant PopularMediaProvider provider,
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
  String? get name => r'popularMediaProvider';
}

/// See also [popularMedia].
class PopularMediaProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [popularMedia].
  PopularMediaProvider({required int page, required int perPage})
    : this._internal(
        (ref) =>
            popularMedia(ref as PopularMediaRef, page: page, perPage: perPage),
        from: popularMediaProvider,
        name: r'popularMediaProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$popularMediaHash,
        dependencies: PopularMediaFamily._dependencies,
        allTransitiveDependencies:
            PopularMediaFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  PopularMediaProvider._internal(
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
    FutureOr<List<Media>> Function(PopularMediaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PopularMediaProvider._internal(
        (ref) => create(ref as PopularMediaRef),
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
    return _PopularMediaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularMediaProvider &&
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
mixin PopularMediaRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _PopularMediaProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with PopularMediaRef {
  _PopularMediaProviderElement(super.provider);

  @override
  int get page => (origin as PopularMediaProvider).page;
  @override
  int get perPage => (origin as PopularMediaProvider).perPage;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
