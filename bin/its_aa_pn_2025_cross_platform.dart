import 'package:its_aa_pn_2025_cross_platform/animal.dart';
import 'package:its_aa_pn_2025_cross_platform/aurora.dart';
import 'package:its_aa_pn_2025_cross_platform/its_aa_pn_2025_cross_platform.dart' as its_aa_pn_2025_cross_platform;

void main(List<String> arguments) {
  final fido = Animal.register(petName: "Leo", bornAt: DateTime(2006, 01, 26), ownerName: "Aurora",);
  final luna = Animal.register(petName: "Luna", bornAt: DateTime(2014, 07, 11), ownerName: "Giulia",);
  final list = {fido, luna};
  final yourAge = 19;
  final myAge = 32;
  final avg = average(yourAge, myAge);
  for(final animal in list) {
      print("Il tuo animale si chiama: ${animal.name}");
  print("il suo padrone è${animal.ownerName}");
  print("anni ${animal.getYears()}anni");
  print("ultima visita ${animal.getDaysSinceLastVisit()} giorni");
  }
  print("your average is: $avg");
  print('Hello world: ${its_aa_pn_2025_cross_platform.calculate()}!');

}
