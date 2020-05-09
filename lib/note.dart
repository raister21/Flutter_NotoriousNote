class Note {
  String todo;
  bool pending = true;

  Note({String todo});

  void done() {
    pending = false;
  }
}
