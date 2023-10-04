void main(){
  print('Lesson day - 08 class construction');
  final Song title = Song('save that shit','lil peep');
  print(title);
}

class Song {
  String _title;
  String _artist;

  Song(this._title,this._artist);

  String get getTitle {
    return _title;
  }

  String get getArtist {
    return _artist;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'song{title:$_title,artist:$_artist}';
  }
}