import 'package:dartz/dartz.dart';
import 'package:young_arts/core/error/failure.dart';
import 'package:young_arts/core/usecases/usecase.dart';
import 'package:young_arts/features/profile/domain/entities/user_profile.dart';
import 'package:young_arts/features/profile/domain/repositories/user_profile_repository.dart';

class FetchUsers implements UseCase<List<UserProfile>, NoParams> {
  late final UserProfileRepository repository;

  FetchUsers(this.repository);
  @override
  Future<Either<Failure, List<UserProfile>>> call(NoParams params) async {
    return await repository.fetchUsers();
  }
}
