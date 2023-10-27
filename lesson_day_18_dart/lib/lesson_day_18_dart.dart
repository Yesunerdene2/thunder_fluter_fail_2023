import 'package:word_search_safety/word_search_safety.dart';

void main() {
  print("word Search Safety");

  final List<String> wordList = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];
  final WSSettings settings = WSSettings(
      width: 10,
      height: 10,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.vertical,
        WSOrientation.diagonal,
      ]));
  final WordSearchSafety wordSearch = WordSearchSafety();
  final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(wordList, settings);
  if (newPuzzle.errors!.isEmpty) {
    print('Puzzle 20 List');
    print(newPuzzle.toString());
  }else{
    print('Errors');
    print(newPuzzle.errors);
  }
   final WSSolved solved =
   wordSearch.solvePuzzle(newPuzzle.puzzle!, ['hello', 'world']);
   print('Found Words');
}
