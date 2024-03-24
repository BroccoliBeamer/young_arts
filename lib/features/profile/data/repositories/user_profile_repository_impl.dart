import 'package:dartz/dartz.dart';
import 'package:young_arts/core/error/failure.dart';
import 'package:young_arts/features/profile/data/datasources/mock_backend.dart';
import 'package:young_arts/features/profile/domain/entities/user_profile.dart';
import 'package:young_arts/features/profile/domain/repositories/user_profile_repository.dart';

class UserProfileRepositoryImpl implements UserProfileRepository {
  final MockService mockService;

  UserProfileRepositoryImpl({required this.mockService});

  @override
  Future<Either<Failure, List<UserProfile>>> fetchUsers() async {
    try {
      final users = await mockService.fetchUsers();
      return Right(users);
    } catch (error) {
      return Left(error as Failure);
      ;
    }
  }

  @override
  Future<Either<Failure, UserProfile>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserProfile>> getUserArtworks() {
    // TODO: implement getUserArtworks
    throw UnimplementedError();
  }
}
