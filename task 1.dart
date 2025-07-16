//Exercise 1
import 'dart:io';
void main() 
{    
    stdout.write("What's your name?");
    String name = stdin.readLineSync();

    print("Hello, $name What is your age?");
    int age = int.parse(stdin.readLineSync());

    int yearsToHunderd = 100 - age;
    print("$name, You have $yearsToHunderd years to be 100");
}

///////////////////////////////
//Exercise 2
import 'dart:io';
void main()
{    
    stdout.write("enter a number:");
    int number = int.parse(stdin.readLineSync());
    
    if (number % 2 == 0) 
        print("the number is even");
    else 
        print("the number is odd");
}
//////////////////
//Exercise 3
import 'dart:io';
void main() 
{
  List<int> a = [1, 2, 3,4, 5, 6, 7, 8, 9, 10];

  for (var i in a) 
  {
    if (i < 5) 
      print(i);
  }
}
/////////////////////////
//Exercise 4
import 'dart:io';
void main() 
{
  stdout.write("enter a number:");
  int number = int.parse(stdin.readLineSync());

  for (var i = 1; i <= number; i++) 
  {
    if (number % i == 0) 
      print(i);
  }
}
/////////////////////////
///Exercise 5
import 'dart:io';
void main() 
{
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  Set<int> c = {};

  for (var i in a) 
  {
    for (var j in b) 
    {
      if (i == j) 
        c.add(i);
    }
  }
  print(c.toList());
}
/////////////////////////
//Exercise 6
import 'dart:io';
void main() 
{
  stdout.write("enter a word: ");
  String input = stdin.readLineSync().toLowerCase();
  String rev = input.split('').reversed.join('');
  
  input == rev
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}
/////////////////////////
//Exercise 7
import 'dart:io';
void main() 
{
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> l = [];
  int i = 0;

  for (var e in a) 
  {
    if (++i % 2 == 0) 
      l.add(e);
  }
  print(l);
}
/////////////////////////
//Exercise 10
import 'dart:io';
void main() 
{
  stdout.write("enter a number: ");
  int number = int.parse(stdin.readLineSync());
  checkPrime(number);
}

void checkPrime(int number) 
{
  List<int> a = [
    for (var i = 1; i <= number; i++)
      if (number % i == 0) i ];

  a.length == 2
      ? print("The number is a prime")
      : print("The number is not a prime");
}
/////////////////////////
//Exercise 12
import 'dart:io';
void main() 
{
  stdout.write("How many Fibonacci numbers do you want? ");
  int number = int.parse(stdin.readLineSync());
  List<int> result = fibonacciNumbers(number);
  print(result);
}

List<int> fibonacciNumbers(int number) 
{
  List<int> fibList = [1, 1];

  for (var i = 0; i < number; i++) 
  {
    fibList.add(fibList[i] + fibList[i + 1]);
  }
  return fibList;
}
///////////////////////////
//Exercise 14
import 'dart:io';
void main() 
{
  stdout.write("enter a sentence: ");
  String sentence = stdin.readLineSync();
  reverseSentence(sentence);
}
void reverseSentence(String sentence) 
{
  String a = sentence.split(" ").reversed.toList().join(" ");
  print(a);
}
///////////////////////////******************************////////////////