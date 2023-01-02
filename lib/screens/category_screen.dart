import 'package:expense_tracker/widgets/category_fetcher.dart';
import 'package:flutter/material.dart';

import '../widgets/expense_form.dart';

class CategoryScreen extends StatelessWidget {
  static const name = '/category_screen';
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) => const ExpenseForm(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const CategoryFetcher(),
    );
  }
}
