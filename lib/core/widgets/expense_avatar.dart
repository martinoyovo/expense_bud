import 'package:expense_bud/config/constants.dart';
import 'package:expense_bud/config/theme.dart';
import 'package:expense_bud/features/expenses/domain/entities/expense.dart';
import 'package:flutter/material.dart';

class ExpenseAvatar extends StatelessWidget {
  final ExpenseCategory category;
  const ExpenseAvatar(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconData = kExpenseCategoryItems
        .singleWhere((e) => e.category == category)
        .iconData;
    return Container(
      padding: const EdgeInsets.all(Insets.sm),
      decoration:
          BoxDecoration(color: AppColors.kPrimary, shape: BoxShape.circle),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
