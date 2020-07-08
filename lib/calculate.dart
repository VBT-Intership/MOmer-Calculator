class Calculate {
  double numberOne;
  double numberTwo;
  int processId;

  Calculate({
    this.numberOne,
    this.numberTwo,
    this.processId,
  });

  // todo
  void calculate(processId) {
    (processId == 0)
        ? sum(numberOne, numberTwo)
        : (processId == 1)
            ? sub(numberOne, numberTwo)
            : (processId == 2)
                ? mul(numberOne, numberTwo)
                : (processId == 3) ? div(numberOne, numberTwo) : print("error");
  }

  double sum(numberOne, numberTwo) => numberOne + numberTwo;

  double sub(numberOne, numberTwo) => numberOne - numberTwo;

  double mul(numberOne, numberTwo) => numberOne * numberTwo;

  double div(numberOne, numberTwo) => numberOne / numberTwo;
}
