import 'package:mental_health_app/features/music/domain/entities/song.dart';
import 'package:mental_health_app/features/music/domain/repository/song_repository.dart';

class GetAllSongs {
  final SongRepository repository;

  GetAllSongs(this.repository);
  Future<List<Song>> call() async{
    return await repository.getAllSongs();
  }
}