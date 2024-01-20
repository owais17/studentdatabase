import 'dart:io';
import 'dart:core';

// creating an empty list

final NGW = [];

// A function that prompts registrar to input student data.
void addStudent() {
  print(
      "Welcome, this is the NGW students database, Please enter the student's name.");
  final String name = stdin.readLineSync()!;

  print("Enter student's age.");
  final int age = int.parse(stdin.readLineSync()!);

  print("Enter student's date of birth.");
  final String dateOfBirth = stdin.readLineSync()!;

  print("Enter height in centimeters.");
  final int height = int.parse(stdin.readLineSync()!);

  print("Enter student's state of origin.");
  final String stateOfOrigin = stdin.readLineSync()!;

// A map that accepts the above student's data
  var Student = {
    "name": name,
    "age": age,
    "dateOfBirth": dateOfBirth,
    "height": height,
    "stateOfOrigin": stateOfOrigin,
  };
  NGW.add(Student);


}
// function that can be called in the main function to print student name(s).

void printStudents() {
  for (var Student in NGW) {
    for(var singleStudent in Student.entries) {
      print('${singleStudent.key}: ${singleStudent.value}');
    }
  }
}

void main() {
// call the addStudent function so it will be the first thing to show on the console.
addStudent();
  // A while loop that always returns true
  while(true) {
    print("Enter 1 to add another student's name or enter 0 to view list of students already in database.");
  final int userInput = int.parse(stdin.readLineSync()!);
    if(userInput == 1){
    addStudent();
    }else if(userInput == 0){
      printStudents();
      break;
    }else{
      print('Invalid input, try again.');
    }
  }
 }
