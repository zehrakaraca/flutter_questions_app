class Question {
  const Question({
    required this.question,
    required this.answer,
    required this.correctAnswerIndex,
  });

  final String question;
  final List<String> answer;
  final int correctAnswerIndex;
}