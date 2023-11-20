import 'package:flutter/material.dart';
import 'package:word_find_app/components/gradient_letter.dart';
import 'package:word_find_app/components/gradient_widget.dart';
import 'package:word_find_app/models/word_list_repository.dart';
import 'package:word_find_app/out.dart';
import 'package:word_search_safety/word_search_safety.dart';
import 'models/game_state.dart';
import 'models/user.dart';

class Game extends StatefulWidget {
  const Game({super.key, required this.user});
  final User user;

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  exitDialog(context);
                },
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: Image.asset('assets/images/exit.png'),
                ),
              ),
            ],
          ),
        ),
        actions: [
          SizedBox(
            child: Image.asset('assets/images/trophy1.png'),
            width: 24,
            height: 24,
          ),
          Center(
            child: SizedBox(
              width: 25,
              height: 33,
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ],
        title: SizedBox(
          width: 275,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.user.name,
              style: TextStyle(
                fontFamily: 'Ribeye',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.orange,
              ),),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back2.png'),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset('assets/images/orange.png'),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 31)),
                Center(
                  child: SizedBox(
                    // width: 68,
                    // height: 33,
                    child: Text(
                      "0/10",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 16)),
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/images/previousGray.png'),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    Container(
                      width: 250,
                      height: 250,
                      child: Image.asset(gameState.currentModel.imageURl),

                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 16)),
                        SizedBox(
                          width: 32,
                          height: 32,
                          child: Image.asset('assets/images/next.png'),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 7)),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(hiddenWord.length, (index) {
                    if (revealeHiddenWord[index]) {
                      print(hiddenWord[index]);
                      return GradientLetter(
                        letter: hiddenWord[index],
                        width: 50,
                        height: 50,
                        fontSize: 20,
                        borderRadius: 6,
                      );
                    } else {
                      return GradientLetter(
                        letter: '',
                        width: 50,
                        height: 50,
                        fontSize: 1,
                        borderRadius: 11,
                      );
                    }
                  }),
                  // children: [
                  //
                  //   GradientLetter(
                  //       letter: '',
                  //       width: 43,
                  //       height: 43,
                  //       fontSize: 0,
                  //       borderRadius: 11),
                  //   Padding(padding: EdgeInsets.only(right: 7)),
                  //   GradientLetter(
                  //       letter: '',
                  //       width: 43,
                  //       height: 43,
                  //       fontSize: 0,
                  //       borderRadius: 11),
                  //   Padding(padding: EdgeInsets.only(right: 7)),
                  //   GradientLetter(
                  //       letter: '',
                  //       width: 43,
                  //       height: 43,
                  //       fontSize: 0,
                  //       borderRadius: 11),
                  //   Padding(padding: EdgeInsets.only(right: 7)),
                  //   // GradientLetter(
                  //   //     letter: '',
                  //   //     width: 43,
                  //   //     height: 43,
                  //   //     fontSize: 0,
                  //   //     borderRadius: 11),
                  //   // Padding(padding: EdgeInsets.only(right: 7)),
                  //   GradientLetter(
                  //       letter: '',
                  //       width: 43,
                  //       height: 43,
                  //       fontSize: 0,
                  //       borderRadius: 11),
                  //   Padding(padding: EdgeInsets.only(right: 7)),
                  //   GradientLetter(
                  //       letter: '',
                  //       width: 43,
                  //       height: 43,
                  //       fontSize: 0,
                  //       borderRadius: 11),
                  //   Padding(padding: EdgeInsets.only(right: 7)),
                  //   Container(
                  //     width: 43,
                  //     height: 43,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(16),
                  //         color: Color(0xFFFF9002)),
                  //     child: Align(
                  //       alignment: Alignment.center,
                  //       child: FractionallySizedBox(
                  //         widthFactor: 2 / 3,
                  //         heightFactor: 2 / 3,
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(10),
                  //               gradient: LinearGradient(
                  //                   colors: [
                  //                     Color.fromARGB(25, 144, 2, 0),
                  //                     Color(0xFFE480000)
                  //                   ],
                  //                   begin: Alignment.topLeft,
                  //                   end: Alignment.bottomRight,
                  //                   stops: [-0.025, 1.16875],
                  //                   transform: GradientRotation(180))),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ],
                ),
                Padding(padding: EdgeInsets.only(top: 11.5)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 16,
                      height: 16,
                      child: Image.asset('assets/images/hint.png'),
                    ),
                    Text(
                      'Hint',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 57)),
                Container(
                  width: 400,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: settings.width,
                    ),
                    itemCount: settings.width * settings.height,
                    itemBuilder: (BuildContext context, int index) {
                      final int row = index ~/ settings.width;
                      final int col = index % settings.width;
                      final cell = newPuzzle!.puzzle![row][col];
                      return GestureDetector(
                        onTap: () {
                          print('tapped cell $cell');
                          onLetterSelected(cell);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: GradientLetterWidget(
                            50,50,1,6.67,11.47, 3, cell.toUpperCase(),
                          ),
                          // width: 30,
                          // height: 30,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(6),
                          //   color: Color(0xFFFF9002),
                          // ),
                          // child: Align(
                          //   child: FractionallySizedBox(
                          //     widthFactor: 2 / 3,
                          //     heightFactor: 2 / 3,
                          //     child: Container(
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(11),
                          //         gradient: LinearGradient(
                          //           colors: [
                          //             Color.fromRGBO(255, 144, 2, 0),
                          //             Color(0xFFE48000),
                          //           ],
                          //           begin: Alignment.bottomLeft,
                          //           end: Alignment.bottomRight,
                          //           stops: [
                          //             -0.025,
                          //             1.6875,
                          //           ],
                          //           transform: GradientRotation(180),
                          //         ),
                          //       ),
                          //       alignment: Alignment.center,
                          //       child: Text(
                          //         cell.toUpperCase(),
                          //         style: const TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 20,
                          //           fontWeight: FontWeight.w400,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
