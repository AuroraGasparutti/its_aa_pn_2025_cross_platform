class Animal {
  Animal({ //costruttore dove gli passo i parametri
    required this.name,
    required this.bornAt,
    required this.ownerName,
    required this.lastVisitAt,
  });

factory Animal.register( {
  required String petName,
  required DateTime bornAt,
  required String ownerName,

}) {
  return Animal(name: petName, bornAt: bornAt, ownerName: ownerName, lastVisitAt: DateTime.now());
}

  final String name;
  final DateTime bornAt;
  final String ownerName;
  final DateTime lastVisitAt;

  int getYears() {
    final now = DateTime.now();
    return now.year - bornAt.year;
  }

  int getDaysSinceLastVisit() {
    final now = DateTime.now(); //per sapere l'ora esatta dal sistema operativo
    final difference = now.difference(lastVisitAt);
    return difference.inDays; //ritorno la differenza in giorni
  }
}

// Animal registerFido() {
//   return Animal(name: "fido", bornAt: DateTime(2025, 06, 23), ownerName: "Luca", lastVisitAt: DateTime.now(),);
// }