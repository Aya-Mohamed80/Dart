
OOP Concepts Used in This Dart Project "Hospital System" :

1. Class

Purpose: Blueprint for objects

Used In:

  All classes in the code (`User`, `Person`, `Patient`, `Doctor`, `Appointment`, `HospitalSystem`) 
  are examples of class definitions that model real-world entities.

--------------------------------------------------

2. Object

Purpose: Instance of a class

Used In:

Objects are created using constructors, such as:
Doctor("Ahmed", "D1", "Cardiology");
Patient("Ali", "P1", 25);

-------------------------------------------------

3. Constructor

Purpose: Initialize object properties

Used In:

Each class (e.g., `Person`, `Patient`, `Doctor`, `Appointment`) has a constructor that sets initial values: , for example:
    Patient(String name, String id, this._age) : super(name, id);

--------------------------------------------------

4. Method

Purpose: Class function

Used In:

Examples include:
    displayInfo() in all user-related classes
    show() in Appointment
    book(), addPatient(), addDoctor() in HospitalSystem

--------------------------------------------------

5. Property
   
Purpose: Class variable

Used In:

  Private variables such as '_name', '_age', '_specialty' represent properties.
  They hold the internal state of each object:
      String _name;
      int _age;

---------------------------------------------------

6. Encapsulation

Purpose: Protect and control access to data

Used In:

Properties like '_name', '_id', '_age' are private, and accessed via public getters/setters:
    String get name => _name;
    set name(String newName) => _name = newName;
    
------------------------------------------

7. Inheritance

Purpose: Code reuse via parent/child classes

Used In:

  'Person' extends 'User'
  'Patient' and 'Doctor' both extend 'Person'
    This allows reuse of 'name', 'id', and methods like 'displayInfo()'.

--------------------------------------

8. Polymorphism

Purpose: Different behaviors via method override

Used In:

The 'displayInfo()' method is overridden in each subclass ('Patient', 'Doctor') to provide custom output.

----------------------------------------

9. Getter/Setter

Purpose: Controlled property access (These manage access to private properties and apply any needed logic in the future.).

Used In:

Custom getters and setters like:
    String get name => _name;
    set name(String newName) => _name = newName;
    
---------------------------------------------

10. Static Members

Purpose: Shared class-level properties/methods

Used In:

The static property 'User.totalUsers' tracks the number of user instances across the entire system:
    static int totalUsers = 0;

It's incremented in the 'User' constructor when any user is created.

--------------------------------------------

11. Abstraction
    
Purpose: Hide complex implementation and expose only necessary details

Used In:

The User class is declared as abstract, which means it cannot be instantiated directly and serves as a common interface for all user types (Patient, Doctor).
 
 For Example: 
    abstract class User {
      static int totalUsers = 0;
      void displayInfo();
      set name(String newName);
    }

  ---------------------------------------------------
