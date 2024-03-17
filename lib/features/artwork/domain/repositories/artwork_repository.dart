import 'package:young_arts/features/artwork/domain/entities/artwork.dart';

abstract class ArtworkRepository {
  Future<List<Artwork>> getArtworks();
  Future<Artwork> getArtwork(String id);
  Future<void> addArtwork(Artwork artwork);
  Future<void> updateArtwork(Artwork artwork);
  Future<void> deleteArtwork(String id);
}
