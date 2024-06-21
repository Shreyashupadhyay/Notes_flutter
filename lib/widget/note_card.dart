import 'package:flutter/material.dart';
import 'package:noted_flutter/models/note_models.dart';
import 'package:noted_flutter/widget/note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note , required this.index, required this.onNoteDeleted});

  final Note note;
  final int index;
  final Function(int) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => noteview(note: note, index: index, onNoteDeleted:onNoteDeleted,)));

      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                note.title,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 18,),
              Text(
                note.title,
                style: TextStyle(fontSize: 20),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}

