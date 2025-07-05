// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_sources_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$episodeSourcesHash() => r'34229ce082587e7e66b01ce23e7939004ba42d69';

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

/// See also [episodeSources].
@ProviderFor(episodeSources)
const episodeSourcesProvider = EpisodeSourcesFamily();

/// See also [episodeSources].
class EpisodeSourcesFamily extends Family<AsyncValue<EpisodeSources>> {
  /// See also [episodeSources].
  const EpisodeSourcesFamily();

  /// See also [episodeSources].
  EpisodeSourcesProvider call({
    required String episodeId,
    String? category,
    String? server,
  }) {
    return EpisodeSourcesProvider(
      episodeId: episodeId,
      category: category,
      server: server,
    );
  }

  @override
  EpisodeSourcesProvider getProviderOverride(
    covariant EpisodeSourcesProvider provider,
  ) {
    return call(
      episodeId: provider.episodeId,
      category: provider.category,
      server: provider.server,
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
  String? get name => r'episodeSourcesProvider';
}

/// See also [episodeSources].
class EpisodeSourcesProvider extends AutoDisposeFutureProvider<EpisodeSources> {
  /// See also [episodeSources].
  EpisodeSourcesProvider({
    required String episodeId,
    String? category,
    String? server,
  }) : this._internal(
         (ref) => episodeSources(
           ref as EpisodeSourcesRef,
           episodeId: episodeId,
           category: category,
           server: server,
         ),
         from: episodeSourcesProvider,
         name: r'episodeSourcesProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$episodeSourcesHash,
         dependencies: EpisodeSourcesFamily._dependencies,
         allTransitiveDependencies:
             EpisodeSourcesFamily._allTransitiveDependencies,
         episodeId: episodeId,
         category: category,
         server: server,
       );

  EpisodeSourcesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.episodeId,
    required this.category,
    required this.server,
  }) : super.internal();

  final String episodeId;
  final String? category;
  final String? server;

  @override
  Override overrideWith(
    FutureOr<EpisodeSources> Function(EpisodeSourcesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EpisodeSourcesProvider._internal(
        (ref) => create(ref as EpisodeSourcesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        episodeId: episodeId,
        category: category,
        server: server,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<EpisodeSources> createElement() {
    return _EpisodeSourcesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EpisodeSourcesProvider &&
        other.episodeId == episodeId &&
        other.category == category &&
        other.server == server;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, episodeId.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, server.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EpisodeSourcesRef on AutoDisposeFutureProviderRef<EpisodeSources> {
  /// The parameter `episodeId` of this provider.
  String get episodeId;

  /// The parameter `category` of this provider.
  String? get category;

  /// The parameter `server` of this provider.
  String? get server;
}

class _EpisodeSourcesProviderElement
    extends AutoDisposeFutureProviderElement<EpisodeSources>
    with EpisodeSourcesRef {
  _EpisodeSourcesProviderElement(super.provider);

  @override
  String get episodeId => (origin as EpisodeSourcesProvider).episodeId;
  @override
  String? get category => (origin as EpisodeSourcesProvider).category;
  @override
  String? get server => (origin as EpisodeSourcesProvider).server;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
