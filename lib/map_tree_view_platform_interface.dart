import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'map_tree_view_method_channel.dart';

abstract class MapTreeViewPlatform extends PlatformInterface {
  /// Constructs a MapTreeViewPlatform.
  MapTreeViewPlatform() : super(token: _token);

  static final Object _token = Object();

  static MapTreeViewPlatform _instance = MethodChannelMapTreeView();

  /// The default instance of [MapTreeViewPlatform] to use.
  ///
  /// Defaults to [MethodChannelMapTreeView].
  static MapTreeViewPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MapTreeViewPlatform] when
  /// they register themselves.
  static set instance(MapTreeViewPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
