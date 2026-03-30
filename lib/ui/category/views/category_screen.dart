import 'package:flutter/material.dart';

import '../../../domain/models/category.dart';
import '../view_models/category_view_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final viewModel = CategoryViewModel();

  @override
  void initState() {
    super.initState();

    viewModel.load().then((_) {
      setState(() {});
    });

    viewModel.addListener(() {
      setState(() {});
    });
  }

  void openModal([Category? category]) {
    viewModel.titleController.text =
        category?.title ?? '';

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
            category == null
                ? 'Add Category'
                : 'Edit Category',
          ),
          content: TextField(
            controller: viewModel.titleController,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (category == null) {
                  viewModel.add();
                } else {
                  viewModel.update(category);
                }

                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    viewModel.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openModal();
        },
        child: const Icon(Icons.add),
      ),
      body: viewModel.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: viewModel.categories.length,
              itemBuilder: (_, index) {
                final category =
                    viewModel.categories[index];

                return ListTile(
                  title: Text(category.title),
                  onTap: () {
                    openModal(category);
                  },
                  trailing: IconButton(
                    onPressed: () {
                      viewModel.remove(category);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            ),
    );
  }
}
