// ! Üçgende üçüncü açıyı bulma
import 'dart:io';

void main() {
  // !Önce kullanıcıdan 1. açı değerini alırız
  print("Lütfen ilk açı değerini girin:");
  int? firstAngle = int.parse(stdin.readLineSync()!);

  // !İkinci açı değerini alırız
  print("Lütfen ikinci açı değerini girin:");
  int? secondAngle = int.parse(stdin.readLineSync()!);

  // ! En son da kalan açıyı hesaplatırız
  int thirdAngle = 180 - (secondAngle + firstAngle);

  // !Sonuç yazdırılır
  print("Üçüncü açı: $thirdAngle derece");
}
