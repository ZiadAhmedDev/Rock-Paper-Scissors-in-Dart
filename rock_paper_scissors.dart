import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write("Rock, paper or scissors? (r/p/s) ");
    final input = stdin.readLineSync();
    if (input == "r" || input == "s" || input == "p") {
      var PlayerMove;
      if (input == "r") {
        PlayerMove = Move.rock;
      } else if (input == "s") {
        PlayerMove = Move.scissors;
      } else {
        PlayerMove = Move.paper;
      }
      final random = rng.nextInt(3);
      final AiMove = Move.values[random];
      print('you select: ${PlayerMove}');
      print('Ai select: ${AiMove.name}');
      if (PlayerMove == AiMove) {
        print("lol, it's Draw !!");
      } else if (PlayerMove == 'scissors' && AiMove == 'paper' ||
          PlayerMove == 'rock' && AiMove == 'scissors' ||
          PlayerMove == 'paper' && AiMove == 'rock') {
        print('OMG, you Fkin win');
      } else {
        print('you lost, Shame on U');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('The Output is invalid');
    }
  }
}
