import 'dart:io';

void main() {
  int n = 5;
  while (n != 0) {
    print("1. ush-bes");
    print("2. century");
    print("3. length");
    print("4. even-odd");
    print("5. Exit");

    n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        {
          for (int i = 1; i <= 100; i++) {
            if (i % 3 == 0) {
              print("ush");
            } else if (i % 5 == 0) {
              print("bes");
            } else if (i % 15 == 0) {
              print("ushpen bes");
            } else {
              print(i);
            }
          }
          break;
        }
      case 2:
        {
          print("Please, enter a year to convert it into century: ");
          int year = int.parse(stdin.readLineSync()!);
          int century = (year + 99) ~/ 100;
          print("The century is of the $year is: $century");
          break;
        }
      case 3:
        {
          print("Please, enter a number to find its length: ");
          int num = int.parse(stdin.readLineSync()!);
          int a = 0;
          while (num != 0) {
            num = num ~/ 10;
            a++;
          }
          print("Number of digits: $a");
          break;
        }
      case 4:
        {
          print(
              "Please, enter a number to find amount of even and odd numbers:");
          int num = int.parse(stdin.readLineSync()!);
          int chet = 0, nechet = 0;
          while (num > 0) {
            int check = num % 10;
            if (check % 2 == 0) {
              chet++;
            } else if (check % 2 != 0) {
              nechet++;
            }
            num = (num / 10).toInt();
          }
          print("Even numbers: $chet");
          print("Odd numbers: $nechet");
          break;
        }
      case 5:
        break;
      default:
        {
          print("no such a choice!");
        }
    }
  }
}
