import 'dart:io';
import 'dart:math';

// main function of the project.
void main() {


  // Creating object of the class.
  // Now we can access all the function of the parents class.
  var cal = ScientificCalculator();

  // A variable for passing in switch case.
  int choice = 0;
  cal.menu();

  print("_____________________");
  print("Select:...");
  choice = int.parse(stdin.readLineSync()!); // user input

  switch (choice) {

    // For sum operation.
    case 1:
      print("Enter Number 1: ");
      cal.entNum_1();
      print("Enter Number 2: ");
      cal.entNum_2();
      print(cal.sum());
      break;
    // For minus operation.
    case 2:
      print("Enter Number 1: ");
      cal.entNum_1();
      print("Enter Number 2: ");
      cal.entNum_2();
      print(cal.subtract());
      break;
    // For multiply operation.
    case 3:
      print("Enter Number 1: ");
      cal.entNum_1();
      print("Enter Number 2: ");
      cal.entNum_2();
      print(cal.product());
      break;
    // For division operation.
    case 4:
      print("Enter Number 1: ");
      cal.entNum_1();
      print("Enter Number 2: ");
      cal.entNum_2();
      print(cal.division());
      break;

    // For sin operation.
    case 5:
      cal.setAngle();
      cal.getSin();
      break;
    // For cos operation.
    case 6:
      cal.setAngle();
      cal.getCos();
      break;
    // For tan operation.
    case 7:
      cal.setAngle();
      cal.getTan();
      break;
    // For asin operation.
    case 8:
      cal.setAngle();
      cal.getAsin();
      break;
    // For acos operation.
    case 9:
      cal.setAngle();
      cal.getAcos();
      break;
    // For atan operation.
    case 10:
      cal.setAngle();
      cal.getAtan();
      break;
    // For power operation.
    case 11:
      print("Enter Base: ");
      cal.entNum_1();
      print("Enter Power: ");
      cal.entNum_2();
      cal.getPower();
      break;
    // For Average operation.
    case 12:
      print("AVERAGE");
      print("Enter Value 1: ");
      cal.entNum_1();
      print("Enter Value 2: ");
      cal.entNum_2();
      print(cal.getAverage());
      break;
    // For SqaureRoot operation.
    case 13:
      print("SquarRoot");
      print("Enter Value : ");
      cal.entNum_1();
      cal.squarRoot();
      break;
    // For percentage operation.
    case 14:
      print("PERCENTAGE");
      print("Enter Obtained Marks: ");
      cal.entNum_1();
      print("Enter Total Marks: ");
      cal.entNum_2();
      print(cal.getPercentage());
  }
}


// class for declearing the  the calculator Function 

class ScientificCalculator {
  late double num1;   // variable for storing value in run time 
  late double num2;

// for taking input from user (  number 1 ).
  void entNum_1() {
    num1 = double.parse(stdin.readLineSync()!);
  }

  // for taking input from user (  number 2 ).
  void entNum_2() {
    num2 = double.parse(stdin.readLineSync()!);
  }


   //  Main Manu for Scientific Calculator...

  void menu() {
    print("\n----------------------------\n");
    print(":  Scientific Calculator   :");
    print("\n----------------------------\n");

    print("________ Main Manu _________\n");
    print("1.\t+");
    print("2.\t-");
    print("3.\t*");
    print("4.\t/");
    print("5.\tsin");
    print("6.\tcos");
    print("7.\ttan");
    print("8.\tasin");
    print("9.\tacos");
    print("10.\tatan");
    print("11.\tPower");
    print("12.\tAverage");
    print("13.\tsquarRoot");
    print("14.\tPercentage");
  }  

  // For Simple Calculator  .


  // Sum Function
  double sum() {
    return (num1 + num2);
  }

  // Subtract Function
  double subtract() {
    return (num1 - num2);
  }

  // Multiplication Function
  double product() {
    return (num1 * num2);
  }

  // division Function
  double division() {
    return (num1 / num2);
  }

  // For Scientific Calculator .

  late double angle; // assign value in run time

  void setAngle() {
    print("Enter Angle: ");
    angle = double.parse(stdin.readLineSync()!);
  }

  void getSin() {
    print(sin(angle));
  }

  void getCos() {
    print(cos(angle));
  }

  void getTan() {
    print(tan(angle));
  }

  void getAsin() {
    print(asin(angle));
  }

  void getAcos() {
    print(acos(angle));
  }

  void getAtan() {
    print(atan(angle));
  }

  squarRoot() {
    print(sqrt(num1));
  }

  void getPower() {
    // base and exponent
    print(pow(num1, num2));
  }

  // get average
  double getAverage() {
    return (num1 + num2) / 2;
  }

  // void get percentage
  double getPercentage() {
    return (num1 / num2) * 100;
  }
}
