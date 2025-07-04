// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMediaDetailsHash() => r'166103bbf1e454035f7773a5af47b55d373d01a3';

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

/// See also [getMediaDetails].
@ProviderFor(getMediaDetails)
const getMediaDetailsProvider = GetMediaDetailsFamily();

/// See also [getMediaDetails].
class GetMediaDetailsFamily extends Family<AsyncValue<MediaDetails>> {
  /// See also [getMediaDetails].
  const GetMediaDetailsFamily();

  /// See also [getMediaDetails].
  GetMediaDetailsProvider call(int mediaId) {
    return GetMediaDetailsProvider(mediaId);
  }

  @override
  GetMediaDetailsProvider getProviderOverride(
    covariant GetMediaDetailsProvider provider,
  ) {
    return call(provider.mediaId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMediaDetailsProvider';
}

/// See also [getMediaDetails].
class GetMediaDetailsProvider extends AutoDisposeFutureProvider<MediaDetails> {
  /// See also [getMediaDetails].
  GetMediaDetailsProvider(int mediaId)
    : this._internal(
        (ref) => getMediaDetails(ref as GetMediaDetailsRef, mediaId),
        from: getMediaDetailsProvider,
        name: r'getMediaDetailsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getMediaDetailsHash,
        dependencies: GetMediaDetailsFamily._dependencies,
        allTransitiveDependencies:
            GetMediaDetailsFamily._allTransitiveDependencies,
        mediaId: mediaId,
      );

  GetMediaDetailsProvider._internal(
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
    FutureOr<MediaDetails> Function(GetMediaDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMediaDetailsProvider._internal(
        (ref) => create(ref as GetMediaDetailsRef),
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
    return _GetMediaDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMediaDetailsProvider && other.mediaId == mediaId;
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
mixin GetMediaDetailsRef on AutoDisposeFutureProviderRef<MediaDetails> {
  /// The parameter `mediaId` of this provider.
  int get mediaId;
}

class _GetMediaDetailsProviderElement
    extends AutoDisposeFutureProviderElement<MediaDetails>
    with GetMediaDetailsRef {
  _GetMediaDetailsProviderElement(super.provider);

  @override
  int get mediaId => (origin as GetMediaDetailsProvider).mediaId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
