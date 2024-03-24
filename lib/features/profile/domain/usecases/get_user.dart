import 'package:dartz/dartz.dart';
import 'package:young_arts/core/error/failure.dart';
import 'package:young_arts/core/usecases/usecase.dart';
import 'package:young_arts/features/profile/domain/entities/user_profile.dart';
import 'package:young_arts/features/profile/domain/repositories/user_profile_repository.dart';

class GetUser implements UseCase<UserProfile, NoParams> {
  final UserProfileRepository repository;

  GetUser(this.repository);
  @override
  Future<Either<Failure, UserProfile>> call(NoParams params) async {
    return await repository.getUser();
  }
}
