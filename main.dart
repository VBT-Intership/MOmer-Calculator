import 'dart:convert';
import 'dart:io';

import 'package:colorize/colorize.dart';

void main() {
  // Calculate numb1 = Calculate(numberOne: 1, numberTwo: 2);
  // print(numb1.calculate(2));

  welcomeWrite;
  processWrite;

  // STDIN
  var line = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
}

void get welcomeWrite {
  String welcome = "Calculator'a Hoş Geldiniz\n\n";
  welcome += "Yapmak istediğiniz işlemi seçiniz.\n";

  Colorize welcomeColor = new Colorize(welcome);
  welcomeColor.bgMagenta();
  print(welcomeColor);
}

void get processWrite {
  String process = "Toplama için 0'a basınız.\n";
  process += "Çıkarma için 1'e basınız.\n";
  process += "Çarpma için 2'e basınız.\n";
  process += "Bölme için 3'e basınız.\n";

  Colorize processColor = new Colorize(process);
  processColor.bgBlue();
  print(processColor);
}
