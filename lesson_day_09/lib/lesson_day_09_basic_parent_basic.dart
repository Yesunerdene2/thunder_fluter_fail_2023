void main() {
  print('Dart lesson day 09');
  print("Dart class exension");
  final ChessPiece chessPiece = ChessPiece('ChessPiece');
  print(chessPiece);
  final Pawn whitePawnD4 = Pawn("I'm a D4 white pawn");
  print(whitePawnD4);
}

class ChessPiece {
  String name = 'Chess Piece';
  ChessPiece(this.name);
  @override
  String toString() {
    return "I'm a chess piece. My name is $name.";
  }
}

class Pawn extends ChessPiece {
  Pawn(super.name);
}
