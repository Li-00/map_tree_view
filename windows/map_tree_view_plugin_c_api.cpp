#include "include/map_tree_view/map_tree_view_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "map_tree_view_plugin.h"

void MapTreeViewPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  map_tree_view::MapTreeViewPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
