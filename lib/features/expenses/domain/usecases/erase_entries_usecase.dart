import 'package:dartz/dartz.dart';

import 'package:expense_bud/core/failure/failure.dart';
import 'package:expense_bud/core/usecases/usecase.dart';
import 'package:expense_bud/features/expenses/domain/repositories/expense_repository.dart';

class EraseEntriesUsecase implements NoArgsUsecase<Unit> {
  final IExpenseRepository _expenseRepository;
  EraseEntriesUsecase(this._expenseRepository);

  @override
  Future<Either<Failure, Unit>> call() {
    return _expenseRepository.eraseEntries();
  }
}
