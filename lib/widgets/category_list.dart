import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/database_provider.dart';
import '../models/ex_category.dart';
import 'category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DatabaseProvider>(builder: (_, db, __) {
      List<ExpenseCategory> cats = db.categories;
      return ListView.builder(
          itemCount: cats.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) => CategoryCard(cats[index]));
    });
  }
}
