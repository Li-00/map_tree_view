import 'package:flutter/cupertino.dart';
import 'package:map_tree_view/model/tree_node.dart';

class TreeController extends ChangeNotifier {
  TreeController();

  final Map<String, TreeNode> _treeMapData = {};

  Map<String, TreeNode> get treeMapData => _treeMapData;

  set treeMapData(Map<String, TreeNode> value) {
    _treeMapData.clear();
    _treeMapData.addAll(value);
    notifyListeners();
  }

  List<TreeNode> treeListData() => _treeMapData.values.toList();
}
