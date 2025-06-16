class Service {
  final String title;
  final String category;
  final int responses;
  final double budget;
  final DateTime deadline;
  final bool isActive;

  Service({
    required this.title,
    required this.category,
    required this.responses,
    required this.budget,
    required this.deadline,
    this.isActive = true,
  });
}
