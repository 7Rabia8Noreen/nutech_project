class Course {
  final int id;
  final String title;
  final String imageUrl;
  final double charges;
  final int duration;
  final String classes;
  final String lecture;
  final String program;
  final List<String> modules;
  final String durationUnit;
  final String chargesUnit;

  Course({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.charges,
    required this.duration,
    required this.classes,
    required this.modules,
    required this.lecture,
    required this.program,
    required this.durationUnit,
    required this.chargesUnit,
  });
}
