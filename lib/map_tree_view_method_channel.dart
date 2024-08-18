import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'map_tree_view_platform_interface.dart';

/// An implementation of [MapTreeViewPlatform] that uses method channels.
class MethodChannelMapTreeView extends MapTreeViewPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('map_tree_view');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
