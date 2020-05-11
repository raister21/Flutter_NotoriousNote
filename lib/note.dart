class Note {
  String todo;
  bool pending = true;

  Note(String todo) {
    this.todo = todo;
  }

  void done() {
    pending = false;
  }
}
