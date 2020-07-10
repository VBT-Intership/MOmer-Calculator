import 'package:colorize/colorize.dart';

class Calculate {
  double numberOne;
  double numberTwo;
  int processId;
  double result;

  Calculate({
    this.numberOne,
    this.numberTwo,
    this.processId,
  });

  // todo
  void calculate(processId) {
    (processId == 0)
        ? result = sum(numberOne, numberTwo)
        : (processId == 1)
            ? result = sub(numberOne, numberTwo)
            : (processId == 2)
                ? result = mul(numberOne, numberTwo)
                : (processId == 3) ? result = div(numberOne, numberTwo) : print("error");
    writeAnswer(result);
  }

  double sum(numberOne, numberTwo) => numberOne + numberTwo;

  double sub(numberOne, numberTwo) => numberOne - numberTwo;

  double mul(numberOne, numberTwo) => numberOne * numberTwo;

  double div(numberOne, numberTwo) => numberOne / numberTwo;
}

void writeAnswer(double result) {
  String writing = "Çıkan Sonuç : " + result.toString();
  Colorize resultColor = new Colorize(writing);
  resultColor.bgRed();
  print(resultColor);
}
