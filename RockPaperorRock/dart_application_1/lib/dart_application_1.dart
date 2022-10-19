library dart_application_1;

export 'src/dart_application_1_base.dart';
import 'dart:io';
import 'dart:math';

enum Move { Rock, Paper, Scissors }

void main() {
  print("Welcome to Rock, Papper ,Scissors Game");
  print("Please said Start or Closed");
  var startval = stdin.readLineSync();
  if (startval == "Start") {
    gameLogic();
    exitCode;
  } else if (startval == "Closed") {
    exitCode;
  } else {
    print("You entered the wrong word, Please try again");
  }
}

gameLogic() {
  while (true) {
    print("Please choose someone -(r/p/s)");
    final input = stdin.readLineSync();

    var playerMove;

    if (input == 'r') {
      playerMove = Move.Rock;
    } else if (input == 'p') {
      playerMove = Move.Paper;
    } else if (input == 's') {
      playerMove = Move.Scissors;
    } else {
      print('Invalid Input');
    }

    final randomNumber = Random().nextInt(3);
    final pcMove = Move.values[randomNumber];

    print('You Played: $playerMove');
    print('Pc Played: $pcMove');

    if (playerMove == Move.Rock && pcMove == Move.Scissors ||
        playerMove == Move.Paper && pcMove == Move.Rock ||
        playerMove == Move.Scissors && pcMove == Move.Paper) {
      print('You Win Camooon');
    } else if (playerMove == pcMove) {
      print('Draw Sorry You dont win :(');
    } else {
      print('You Loose asdsakjdsakjdhkjsad');
    }
    print("Do you want to play again?(Yes/No)");
    var answer = stdin.readLineSync();
    if (answer == "No") {
      break;
    } else if (answer == "Yes") {
      print("Game is begin");
    }
  }
}
