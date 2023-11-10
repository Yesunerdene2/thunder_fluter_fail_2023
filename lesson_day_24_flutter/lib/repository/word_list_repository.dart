import 'package:lesson_day_24_flutter/models/word_search_model.dart';

class WordListRepository {
  final List<WordSearchModel> search_word = [
    WordSearchModel(
      imageURl: 'assets/images/mickey.png,',
      hiddenWord: ['M', 'I', 'C', 'K', 'E', 'Y'],

    ),
    WordSearchModel(
      imageURl: 'assets/images/else.png,',
hiddenWord: ['E', 'L' 'S', 'A'],
    ),
    WordSearchModel(
      imageURl: 'assets/images/totoro.png,',
hiddenWord: ['T', 'O', 'T', 'O','R','O'],
    ),
  ];
}