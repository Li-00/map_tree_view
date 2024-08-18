
import 'map_tree_view_platform_interface.dart';

class MapTreeView {
  Future<String?> getPlatformVersion() {
    return MapTreeViewPlatform.instance.getPlatformVersion();
  }
}
