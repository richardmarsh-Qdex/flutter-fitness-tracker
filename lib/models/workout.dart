class Workout {
  int? id;
  String name;
  int duration;
  DateTime date;

  Workout({
    this.id,
    required this.name,
    required this.duration,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'duration': duration,
      'date': date.toIso8601String(),
    };
  }

  factory Workout.fromMap(Map<String, dynamic> map) {
    return Workout(
      id: map['id'],
      name: map['name'],
      duration: map['duration'],
      date: DateTime.parse(map['date']),
    );
  }
}
