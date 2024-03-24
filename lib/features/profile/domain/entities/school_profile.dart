import 'package:equatable/equatable.dart';

class SchoolProfile extends Equatable {
  final int id;
  final String name;
  final String address;
  final String postcode;
  final String city;
  final String country;
  final String phone;
  final String email;
  final String website;
  final String logo;
  final String type;
  final String description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const SchoolProfile({
    required this.id,
    required this.name,
    required this.address,
    required this.postcode,
    required this.city,
    required this.country,
    required this.phone,
    required this.email,
    required this.website,
    required this.logo,
    required this.type,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        address,
        postcode,
        city,
        country,
        phone,
        email,
        website,
        logo,
        type,
        description,
        createdAt,
        updatedAt,
      ];

  SchoolProfile copyWith({
    int? id,
    String? name,
    String? address,
    String? postcode,
    String? city,
    String? country,
    String? phone,
    String? email,
    String? website,
    String? logo,
    String? type,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SchoolProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      postcode: postcode ?? this.postcode,
      city: city ?? this.city,
      country: country ?? this.country,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      website: website ?? this.website,
      logo: logo ?? this.logo,
      type: type ?? this.type,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
