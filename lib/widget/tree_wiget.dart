import 'package:flutter/material.dart';
import 'package:map_tree_view/controler/tree_controller.dart';
import 'package:map_tree_view/model/tree_node.dart';
import 'package:map_tree_view/widget/tree_node_widget.dart';

class TreeWidget extends StatelessWidget {
  final TreeController treeController;
  final BoxConstraints treeContainerConstraints;

  const TreeWidget(
      {super.key,
      required this.treeController,
      this.treeContainerConstraints =
          const BoxConstraints(maxWidth: 300, maxHeight: 300)});

  @override
  Widget build(BuildContext context) {
    final List<TreeNode> treeNodeList = treeController.treeListData();
    return Container(
      constraints: treeContainerConstraints,
      child: ListView.builder(
        itemCount: treeNodeList.length,
        itemBuilder: (context, index) {
          return TreeNodeWidget(
            treeController: treeController,
            treeNode: treeNodeList[index],
          );
        },
      ),
    );
  }
}
