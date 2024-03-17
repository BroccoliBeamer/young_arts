import 'package:equatable/equatable.dart';

class Artwork extends Equatable {
  final int id;
  final String title;
  final String artist;
  final String imageUrl;
  final String description;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Artwork({
    required this.id,
    required this.title,
    required this.artist,
    required this.imageUrl,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        artist,
        imageUrl,
        description,
        createdAt,
        updatedAt,
      ];

  Artwork copyWith({
    int? id,
    String? title,
    String? artist,
    String? imageUrl,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Artwork(
      id: id ?? this.id,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
