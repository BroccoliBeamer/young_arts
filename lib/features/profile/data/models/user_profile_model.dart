import 'package:young_arts/features/artwork/domain/entities/artwork.dart';
import 'package:young_arts/features/profile/domain/entities/user_profile.dart';

class UserProfileModel extends UserProfile {
  const UserProfileModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.role,
    required super.school,
    required super.yearGroup,
    super.artworks,
    super.createdAt,
    super.updatedAt,
  });

  static const _profileBlacklistKeys = [
    'id',
    'firstName',
    'lastName',
    'email',
    'role',
    'school',
    'yearGroup',
    'artworks',
    'createdAt',
    'updatedAt',
  ];

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      role: json['role'],
      school: json['school'],
      yearGroup: json['yearGroup'],
      artworks: json['artworks'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': super.id,
      'firstName': super.firstName,
      'lastName': super.lastName,
      'email': super.email,
      'role': super.role,
      'school': super.school,
      'yearGroup': super.yearGroup,
      'artworks': super.artworks,
      'createdAt': super.createdAt,
      'updatedAt': super.updatedAt,
    };
    data.removeWhere((key, value) => _profileBlacklistKeys.contains(key));
    return data;
  }

  @override
  UserProfileModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? role,
    String? school,
    String? yearGroup,
    List<Artwork>? artworks,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserProfileModel(
      id: id ?? super.id,
      firstName: firstName ?? super.firstName,
      lastName: lastName ?? super.lastName,
      email: email ?? super.email,
      role: role ?? super.role,
      school: school ?? super.school,
      yearGroup: yearGroup ?? super.yearGroup,
      artworks: artworks ?? super.artworks,
      createdAt: createdAt ?? super.createdAt,
      updatedAt: updatedAt ?? super.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        super.id,
        super.firstName,
        super.lastName,
        super.email,
        super.role,
        super.school,
        super.yearGroup,
        super.artworks,
        super.createdAt,
        super.updatedAt,
      ];
}
