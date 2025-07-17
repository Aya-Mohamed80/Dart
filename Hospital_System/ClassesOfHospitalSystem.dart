import 'dart:io';
abstract class User {
  static int totalUsers = 0;

  User() { totalUsers++; }

  void displayInfo();
  set name(String newName);
}

class Person extends User {
  String _name;
  String _id;

  Person(this._name, this._id) : super();

  String get name => _name;
  String get id => _id;

  @override
  set name(String newName) { _name = newName;}

  @override
  void displayInfo() { print("Person => Name: $_name, ID: $_id"); }
}

class Patient extends Person {
  int _age;

  Patient(String name, String id, this._age) : super(name, id);

  int get age => _age;

  @override
  void displayInfo() { print("Patient => Name: $name, Age: $_age, ID: $id");}
}

class Doctor extends Person {
  String _specialty;

  Doctor(String name, String id, this._specialty) : super(name, id);

  String get specialty => _specialty;

  @override
  void displayInfo() { print("Doctor => Name: $name, Specialty: $_specialty, ID: $id"); }
}

class Appointment {
  final Patient patient;
  final Doctor doctor;
  final String time;

  Appointment(this.patient, this.doctor, this.time);

  void show() { print("${patient.name} has an appointment with Dr. ${doctor.name} at $time"); }
}

class HospitalSystem {
  final List<Patient> patients = [];
  final List<Doctor> doctors = [];
  final List<Appointment> appointments = [];

  void addPatient(Patient patient) => patients.add(patient);
  void addDoctor(Doctor doctor) => doctors.add(doctor);

  void book(String patientId, String doctorId, String time) {
    final patient = patients.firstWhere((p) => p.id == patientId, 
             orElse: () => throw Exception("Patient not found"));
    final doctor = doctors.firstWhere((d) => d.id == doctorId, 
             orElse: () => throw Exception("Doctor not found"));

    appointments.add(Appointment(patient, doctor, time));
    print("Appointment booked successfully.");
  }

  void showAllAppointments() {
    print("\nAll Appointments:");
    if (appointments.isEmpty) 
      print("No appointments scheduled.");
    else 
      for (var appointment in appointments) 
               appointment.show();
  }

  void showAllUsers() {
    if (User.totalUsers == 0) {
      print("No users in the system.");
      return;
    } 
    else {
    print("\nAll Users Info:");
    for (var doctor in doctors) 
          doctor.displayInfo();
    for (var patient in patients) 
          patient.displayInfo();
    print("\nTotal users in system: ${User.totalUsers}");
    }
  }
}