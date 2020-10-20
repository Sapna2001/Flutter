import 'noteState.dart';

class Note {
  final int orderNumber;
  final int line;
  NoteState state = NoteState.ready;

  Note(this.orderNumber,this.line);
}

