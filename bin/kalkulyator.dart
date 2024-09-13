import 'dart:io';

void main() {
  print('Misol kiriting: ');
  String? ifoda = stdin.readLineSync();

  if (ifoda != null && ifoda.isNotEmpty) {
    List<String> listlar = ifoda.split('');

    double sum = double.parse(listlar[0]);

    for (int i = 1; i < listlar.length; i += 2) {
      String operator = listlar[i];
      double nextNumber = double.parse(listlar[i + 1]);

      switch (operator) {
        case '+':
          sum += nextNumber;
          break;
        case '-':
          sum -= nextNumber;
          break;
        case '*':
          sum *= nextNumber;
          break;
        case '/':
          if (nextNumber != 0) {
            sum /= nextNumber;
          } else {
            print('Xatolik: Nolga bo\'lish mumkin emas');
            return;
          }
          break;
        default:
          print('Xatolik: Noto\'g\'ri amal');
          return;
      }
    }
    print('Natija: $sum');
  } else {
    print('Ifoda kiritilmadi');
  }
}
