import 'package:flutter/material.dart';

import '../../../domain/models/category.dart';

class CategorySelector extends StatelessWidget {
  final List<Category> categories;
  final Category? selected;
  final ValueChanged<Category?> onChanged;

  const CategorySelector({
    super.key,
    required this.categories,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Category>(
      value: selected,
      isExpanded: true,
      items: categories
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(item.title),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
