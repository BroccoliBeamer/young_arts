import 'package:young_arts/features/profile/domain/entities/school_profile.dart';

class SchoolProfileModel extends SchoolProfile {
  const SchoolProfileModel({
    required super.id,
    required super.name,
    required super.address,
    required super.postcode,
    required super.city,
    required super.country,
    required super.phone,
    required super.email,
    required super.website,
    required super.logo,
    required super.type,
    required super.description,
    super.createdAt,
    super.updatedAt,
  });

  static const _schoolBlacklistKeys = [
    'id',
    'name',
    'address',
    'postcode',
    'city',
    'country',
    'phone',
    'email',
    'website',
    'logo',
    'type',
    'description',
    'createdAt',
    'updatedAt',
  ];

  factory SchoolProfileModel.fromJson(Map<String, dynamic> json) {
    return SchoolProfileModel(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      postcode: json['postcode'],
      city: json['city'],
      country: json['country'],
      phone: json['phone'],
      email: json['email'],
      website: json['website'],
      logo: json['logo'],
      type: json['type'],
      description: json['description'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': super.id,
      'name': super.name,
      'address': super.address,
      'postcode': super.postcode,
      'city': super.city,
      'country': super.country,
      'phone': super.phone,
      'email': super.email,
      'website': super.website,
      'logo': super.logo,
      'type': super.type,
      'description': super.description,
      'createdAt': super.createdAt,
      'updatedAt': super.updatedAt,
    };
    data.removeWhere((key, value) => _schoolBlacklistKeys.contains(key));
    return data;
  }

  @override
  SchoolProfileModel copyWith({
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
    return SchoolProfileModel(
      id: id ?? super.id,
      name: name ?? super.name,
      address: address ?? super.address,
      postcode: postcode ?? super.postcode,
      city: city ?? super.city,
      country: country ?? super.country,
      phone: phone ?? super.phone,
      email: email ?? super.email,
      website: website ?? super.website,
      logo: logo ?? super.logo,
      type: type ?? super.type,
      description: description ?? super.description,
      createdAt: createdAt ?? super.createdAt,
      updatedAt: updatedAt ?? super.updatedAt,
    );
  }
}
