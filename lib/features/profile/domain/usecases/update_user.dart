import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:young_arts/core/error/failure.dart';
import 'package:young_arts/core/usecases/usecase.dart';
import 'package:young_arts/features/profile/domain/entities/user_profile.dart';
import 'package:young_arts/features/profile/domain/repositories/user_profile_repository.dart';

class UpdateUser implements UseCase<UserProfile, UpdateUserParams> {
  final UserRepository repository;
  UpdateUser(this.repository);
  @override
  Future<Either<Failure, UserProfile>> call(UpdateUserParams params) async {
    return await repository.updateUser(params.user);
  }
}

class UpdateUserParams extends Equatable {
  const UpdateUserParams(this.user);

  final UserProfile user;

  @override
  List<Object> get props => [user];
}
