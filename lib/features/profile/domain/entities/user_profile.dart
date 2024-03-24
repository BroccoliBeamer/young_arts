import 'package:equatable/equatable.dart';
import 'package:young_arts/features/artwork/domain/entities/artwork.dart';

class UserProfile extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String role;
  final String school;
  final String? yearGroup;
  final List<Artwork>? artworks;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserProfile({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
    required this.school,
    this.yearGroup,
    this.artworks,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        email,
        role,
        school,
        yearGroup,
        artworks,
        createdAt,
        updatedAt,
      ];

  UserProfile copyWith({
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
    return UserProfile(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      role: role ?? this.role,
      school: school ?? this.school,
      yearGroup: yearGroup ?? this.yearGroup,
      artworks: artworks ?? this.artworks,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
