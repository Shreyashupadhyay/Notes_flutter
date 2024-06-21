import 'package:flutter/material.dart';
import 'package:noted_flutter/models/note_models.dart';

class noteview extends StatelessWidget {
  const noteview({super.key, required this.note, required this.index , required this.onNoteDeleted});

  final Note note;
  final int index;

  final Function(int) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note View"),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Wanna Delete it?"),
                        content: Text("This ${note.title} Will be deleted"),
                        actions: [
                          TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                                onNoteDeleted(index);
                                Navigator.of(context).pop();
                              },
                              child: Text("DELETE")),
                          TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text("CANCEL"))
                        ],
                      );
                    });
              },
              icon: Icon(Icons.delete)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              note.body,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
