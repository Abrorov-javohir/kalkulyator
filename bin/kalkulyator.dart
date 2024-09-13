import 'dart:io';

void main() {
  // Foydalanuvchidan ifoda olish
  print('Ifodani kiriting (masalan: 5 + 3 - 2 * 4): ');
  String? expression = stdin.readLineSync();

  // Agar kiritilgan ifoda bo'sh bo'lmasa davom etamiz
  if (expression != null && expression.isNotEmpty) {
    // Ifodani bo'sh joyga qarab ajratamiz
    List<String> listlar = expression.split('');

    // Birinchi sonni o'zgartiramiz
    double sum = double.parse(listlar[0]);

    // Amal va keyingi sonlarni ko'rib chiqamiz
    for (int i = 1; i < listlar.length; i += 2) {
      String operator = listlar[i];
      double nextNumber = double.parse(listlar[i + 1]);

      // Amal turiga qarab hisoblaymiz
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
    // Natijani chiqaramiz
    print('Natija: $sum');
  } else {
    print('Ifoda kiritilmadi');
  }
}
