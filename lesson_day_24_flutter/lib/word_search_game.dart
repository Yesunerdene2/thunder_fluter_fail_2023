import 'package:flutter/material.dart';
import 'package:lesson_day_24_flutter/models/game_state.dart';
import 'package:lesson_day_24_flutter/repository/word_list_repository.dart';
import 'package:word_search_safety/word_search_safety.dart';

import 'hidden_word_widget.dart';

class WordsearchGame extends StatelessWidget {
  const WordsearchGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WordSearchScreen(),
    );
  }
}

class WordSearchScreen extends StatefulWidget {
  const WordSearchScreen({super.key});

  @override
  State<WordSearchScreen> createState() => _WordSearchScreenState();
}

class _WordSearchScreenState extends State<WordSearchScreen> {
  late List<String> hiddenWord = [];
  final WSSettings settings = WSSettings(
    width: 7,
    height: 2,
    orientations: List.from([
      WSOrientation.horizontal,
    ]),
  );
  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;
  List<bool> revealeHiddenWord = [];
  late GameState gameState;
  int currentIndex = 0;
  bool isWon = false;
  int howManyGuessed = 0;

  @override
  void initState() {
    super.initState();
    final WordListRepository wordListRepository = WordListRepository();
    gameState = GameState(
        currentModel: wordListRepository.search_word[currentIndex],
        currentModelIndex: currentIndex,
        howManyGuessed: howManyGuessed,
        isWon: isWon);
    hiddenWord = gameState.currentModel.hiddenWord;
    revealeHiddenWord = List.filled(hiddenWord.length, false);
    newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
    if (newPuzzle!.errors!.isEmpty) {
      solved = wordSearch.solvePuzzle(
        newPuzzle!.puzzle!,
        gameState.currentModel.hiddenWord,
      );
    }
  }

  void onLetterSelected(String letter) {
    setState(() {
      uptadeHiddenWordGrid(letter);
    });
  }

  void uptadeHiddenWordGrid(letter) {
    print('updteHiddenWordGrid: $letter');
    for (int i = 0; i < hiddenWord.length; i++) {
      if (hiddenWord[i] == letter) {
        revealeHiddenWord[i] = true;
      }
    }
    if (revealeHiddenWord.every((element) => element == true)) {
      print('You won');
      isWon = true;
      if (isWon) {
        if (WordListRepository().search_word.length - 1 ==
            gameState.currentModelIndex) {
          print('You won the game!');
          return;
        }
        gameState.currentModelIndex++;
        gameState.currentModel =
            WordListRepository().search_word[gameState.currentModelIndex];
        hiddenWord = gameState.currentModel.hiddenWord;
        revealeHiddenWord = List.filled(hiddenWord.length, false);
        isWon = false;
        newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Search Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: settings.width),
                    itemCount: settings.width * settings.height,
                    itemBuilder: (BuildContext context, int index) {
                      final int row = index ~/ settings.width;
                      final int col = index % settings.width;
                      final cell = newPuzzle!.puzzle![row][col];
                      return GestureDetector(
                        onTap: () {
                          print('tapped $cell');
                          onLetterSelected(cell);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            //color: selectedLetter == cell ? Colors.blue:
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            cell,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    })),
            Container(
              width: 200,
              height: 200,
              child: Image.asset(gameState.currentModel.imageURl),
            ),
            SizedBox(height: 150),
            Text('Hidden Word Grid:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(hiddenWord.length, (index) {
                if (revealeHiddenWord[index]) {
                  print(hiddenWord[index]);
                  return HiddenWidget(hiddenWord[index], 60, 60);
                } else {
                  return HiddenWidget('', 60, 60);
                }
              }),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
