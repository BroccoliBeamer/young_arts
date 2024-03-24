import 'package:dartz/dartz.dart';
import 'package:young_arts/core/error/failure.dart';
import 'package:young_arts/features/profile/domain/entities/user_profile.dart';

abstract class UserProfileRepository {
  Future<Either<Failure, UserProfile>> getUser();
  Future<Either<Failure, UserProfile>> getUserArtworks();
}
