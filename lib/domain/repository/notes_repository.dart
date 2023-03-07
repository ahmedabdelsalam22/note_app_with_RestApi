import 'package:note/data/models/note_mode.dart';

import '../../data/data_source/remote_data_source.dart';

abstract class NotesRepository {
  Future<List<NoteModel>> getNotes();
  void deleteNote(int id);
}

class NotesRepositoryImpl implements NotesRepository {
  final RemoteDataSource _remoteDataSource;

  NotesRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<NoteModel>> getNotes() {
    return _remoteDataSource.getNotes();
  }

  @override
  void deleteNote(int id) {
    _remoteDataSource.deleteNote(id);
  }
}
