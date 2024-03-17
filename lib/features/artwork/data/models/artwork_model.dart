import 'package:young_arts/features/artwork/domain/entities/artwork.dart';

class ArtworkModel extends Artwork {
  const ArtworkModel({
    required super.id,
    required super.title,
    required super.artist,
    required super.imageUrl,
    required super.description,
    super.createdAt,
    super.updatedAt,
  });

  static const _artworkBlacklistKeys = [
    'id',
    'title',
    'artist',
    'imageUrl',
    'description',
    'createdAt',
    'updatedAt',
  ];

  factory ArtworkModel.fromJson(Map<String, dynamic> json) {
    return ArtworkModel(
      id: json['id'],
      title: json['title'],
      artist: json['artist'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': super.id,
      'title': super.title,
      'artist': super.artist,
      'imageUrl': super.imageUrl,
      'description': super.description,
      'createdAt': super.createdAt,
      'updatedAt': super.updatedAt,
    };
    data.removeWhere((key, value) => _artworkBlacklistKeys.contains(key));
    return data;
  }

  @override
  ArtworkModel copyWith({
    int? id,
    String? title,
    String? artist,
    String? imageUrl,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ArtworkModel(
      id: id ?? super.id,
      title: title ?? super.title,
      artist: artist ?? super.artist,
      imageUrl: imageUrl ?? super.imageUrl,
      description: description ?? super.description,
      createdAt: createdAt ?? super.createdAt,
      updatedAt: updatedAt ?? super.updatedAt,
    );
  }
}
