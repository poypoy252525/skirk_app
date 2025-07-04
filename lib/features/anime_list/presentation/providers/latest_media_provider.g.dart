// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_media_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$latestMediaHash() => r'874113a08da18d0b8481ae5afb4510b5ec1f55cc';

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

/// See also [latestMedia].
@ProviderFor(latestMedia)
const latestMediaProvider = LatestMediaFamily();

/// See also [latestMedia].
class LatestMediaFamily extends Family<AsyncValue<List<Media>>> {
  /// See also [latestMedia].
  const LatestMediaFamily();

  /// See also [latestMedia].
  LatestMediaProvider call({required int page, required int perPage}) {
    return LatestMediaProvider(page: page, perPage: perPage);
  }

  @override
  LatestMediaProvider getProviderOverride(
    covariant LatestMediaProvider provider,
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
  String? get name => r'latestMediaProvider';
}

/// See also [latestMedia].
class LatestMediaProvider extends AutoDisposeFutureProvider<List<Media>> {
  /// See also [latestMedia].
  LatestMediaProvider({required int page, required int perPage})
    : this._internal(
        (ref) =>
            latestMedia(ref as LatestMediaRef, page: page, perPage: perPage),
        from: latestMediaProvider,
        name: r'latestMediaProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$latestMediaHash,
        dependencies: LatestMediaFamily._dependencies,
        allTransitiveDependencies: LatestMediaFamily._allTransitiveDependencies,
        page: page,
        perPage: perPage,
      );

  LatestMediaProvider._internal(
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
    FutureOr<List<Media>> Function(LatestMediaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LatestMediaProvider._internal(
        (ref) => create(ref as LatestMediaRef),
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
    return _LatestMediaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LatestMediaProvider &&
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
mixin LatestMediaRef on AutoDisposeFutureProviderRef<List<Media>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `perPage` of this provider.
  int get perPage;
}

class _LatestMediaProviderElement
    extends AutoDisposeFutureProviderElement<List<Media>>
    with LatestMediaRef {
  _LatestMediaProviderElement(super.provider);

  @override
  int get page => (origin as LatestMediaProvider).page;
  @override
  int get perPage => (origin as LatestMediaProvider).perPage;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
