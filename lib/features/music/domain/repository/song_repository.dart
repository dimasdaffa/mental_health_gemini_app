import 'package:mental_health_app/features/music/domain/entities/song.dart';

abstract class SongRepository {
  Future <List<Song>>getAllSongs();
  getSongsByAuthor();
}