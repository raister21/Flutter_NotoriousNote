class Question {
  String quest;
  String answer;
  bool answered = false;

  Question(String quest) {
    this.quest = quest;
  }

  void setAns(String inputAns) {
    this.answer = inputAns;
  }

  void done() {
    answered = true;
  }
}
