#ifndef FLUTTER_PLUGIN_MAP_TREE_VIEW_PLUGIN_H_
#define FLUTTER_PLUGIN_MAP_TREE_VIEW_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace map_tree_view {

class MapTreeViewPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MapTreeViewPlugin();

  virtual ~MapTreeViewPlugin();

  // Disallow copy and assign.
  MapTreeViewPlugin(const MapTreeViewPlugin&) = delete;
  MapTreeViewPlugin& operator=(const MapTreeViewPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace map_tree_view

#endif  // FLUTTER_PLUGIN_MAP_TREE_VIEW_PLUGIN_H_
