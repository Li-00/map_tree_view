import 'package:flutter/material.dart';
import 'package:map_tree_view/controler/tree_controller.dart';
import 'package:map_tree_view/model/tree_node.dart';

class TreeNodeWidget extends StatelessWidget {
  final TreeController treeController;
  final TreeNode treeNode;

  const TreeNodeWidget(
      {super.key, required this.treeController, required this.treeNode});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: treeNode.level * 15),
          child: Row(
            children: [
              const Icon(Icons.expand_more),
              Text(treeNode.name),
            ],
          ),
        ),
      ],
    );
  }
}
`