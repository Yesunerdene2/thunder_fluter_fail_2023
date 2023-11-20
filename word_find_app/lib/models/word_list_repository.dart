import 'package:word_find_app/models/word_search_model.dart';

class WordListRepository {
  final List<WordSearchModel> search_word = [
    WordSearchModel(
      imageURl: 'assets/images/IMG.png',
      hiddenWord: ['M', 'I', 'C', 'K', 'E', 'Y'],

    ),
    WordSearchModel(
      imageURl: 'assets/images/elsa.png',
      hiddenWord: ['E', 'L','S', 'A'],
    ),
    WordSearchModel(
      imageURl: 'assets/images/totoro.jpeg',
      hiddenWord: ['T', 'O', 'T', 'O','R','O'],
    ),
  ];
}