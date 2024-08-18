// 节点模型
class TreeNode {
  final String key;
  final String parentKey;
  final int level;
  final String name;
  final bool isExpanded;
  final dynamic date;

  // 无参构造函数
  TreeNode({
    this.key = '',
    this.parentKey = '',
    this.level = 0,
    this.name = '',
    this.isExpanded = false,
    this.date,
  });

  // copyWith 方法
  TreeNode copyWith({
    String? key,
    String? parentKey,
    int? level,
    String? name,
    bool? isExpanded,
    dynamic date,
  }) {
    return TreeNode(
      key: key ?? this.key,
      parentKey: parentKey ?? this.parentKey,
      level: level ?? this.level,
      name: name ?? this.name,
      isExpanded: isExpanded ?? this.isExpanded,
      date: date ?? this.date,
    );
  }

  // toString 方法
  @override
  String toString() {
    return 'TreeNode(key: $key, parentKey: $parentKey, level: $level, name: $name, isExpanded: $isExpanded, date: $date)';
  }

  // toJson 方法
  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'parentKey': parentKey,
      'level': level,
      'name': name,
      'isExpanded': isExpanded,
      'date': date,
    };
  }

  // fromJson 工厂方法
  factory TreeNode.fromJson(Map<String, dynamic> json) {
    return TreeNode(
      key: json['key'] as String,
      parentKey: json['parentKey'] as String,
      level: json['level'] as int,
      name: json['name'] as String,
      isExpanded: json['isExpanded'] as bool,
      date: json['date'],
    );
  }

  // fromMap 工厂方法
  factory TreeNode.fromMap(Map<String, dynamic> map) {
    return TreeNode(
      key: map['key'] as String,
      parentKey: map['parentKey'] as String,
      level: map['level'] as int,
      name: map['name'] as String,
      isExpanded: map['isExpanded'] as bool,
      date: map['date'],
    );
  }

  get isRoot => isEmpty(parentKey);

  bool isEmpty(String val) {
    return val == '' || val == null;
  }
}

// 树的构建
class TreeData {
  final int maxLevel; // 最大层级
  final String levelSplit; // 层级分割符



  TreeData({
    this.maxLevel = 3,
    this.levelSplit = '--',
  });

  List<TreeNode> getTreeData(List<TreeNode> data) {
    List<TreeNode> treeData = [];
    for (var i = 0; i < data.length; i++) {
      if (data[i].parentKey == '') {
        treeData.add(data[i]);
      }
    }
    return treeData;
  }
}
