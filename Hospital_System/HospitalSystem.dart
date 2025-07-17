import 'ClassesOfHospitalSystem.dart';
void main() {
  var system = HospitalSystem();

 system.addDoctor(Doctor("Ahmed", "D1", "Cardiology"));
 system.addPatient(Patient("Ali", "P1", 25));

  system.book("P1", "D1", "10:00 AM");
  system.showAllAppointments();
  system.showAllUsers();
}