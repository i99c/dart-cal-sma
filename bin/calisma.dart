//! Örnek1: Kullanıcıdan Girilen Sayının Asal Olup Olmadığını Bulma

import 'dart:io';

void main() {
  // Kullanıcıdan sayı alma
  print("Bir sayı girin: ");
  int? sayi = int.parse(stdin.readLineSync()!);

  // Asal sayı kontrolü
  asalMi(sayi);
}

void asalMi(int sayi) {
  // 1 ve 1'den küçük sayılar asal değildir
  if (sayi <= 1) {
    print("$sayi bir asal sayı değildir.");
  }
  // 2 ve 3 asal sayılardır
  else if (sayi == 2 || sayi == 3) {
    print("$sayi bir asal sayıdır.");
  }
  // 2'ye veya 3'e tam bölünen sayılar asal değildir
  else if (sayi % 2 == 0 || sayi % 3 == 0) {
    print("$sayi bir asal sayı değildir.");
  }
  // Daha büyük sayılar için bölme kontrolü
  else {
    bool asal = true;
    for (int i = 5; i * i <= sayi; i += 6) {
      if (sayi % i == 0 || sayi % (i + 2) == 0) {
        asal = false;
        break;
      }
    }
    if (asal) {
      print("$sayi bir asal sayıdır.");
    } else {
      print("$sayi bir asal sayı değildir.");
    }
  }
}
