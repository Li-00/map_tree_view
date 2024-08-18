import 'package:flutter_test/flutter_test.dart';
import 'package:map_tree_view/map_tree_view.dart';
import 'package:map_tree_view/map_tree_view_platform_interface.dart';
import 'package:map_tree_view/map_tree_view_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMapTreeViewPlatform
    with MockPlatformInterfaceMixin
    implements MapTreeViewPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MapTreeViewPlatform initialPlatform = MapTreeViewPlatform.instance;

  test('$MethodChannelMapTreeView is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMapTreeView>());
  });

  test('getPlatformVersion', () async {
    MapTreeView mapTreeViewPlugin = MapTreeView();
    MockMapTreeViewPlatform fakePlatform = MockMapTreeViewPlatform();
    MapTreeViewPlatform.instance = fakePlatform;

    expect(await mapTreeViewPlugin.getPlatformVersion(), '42');
  });
}
