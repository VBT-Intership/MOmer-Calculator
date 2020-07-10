import 'dart:convert';
import 'dart:io';

import 'package:calculator/calculate.dart';
import 'package:colorize/colorize.dart';

void main() {
  welcomeWrite;

  print("Hesaplamak istediğiniz ilk sayıyı giriniz : ");
  var _numberOne = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  print("Hesaplamak istediğiniz ikinci sayıyı giriniz : ");
  var _numberTwo = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  processWrite;
  var _processId = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));

  Calculate calculate =
      Calculate(numberOne: double.parse(_numberOne), numberTwo: double.parse(_numberTwo));

  calculate.calculate(int.parse(_processId));
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
