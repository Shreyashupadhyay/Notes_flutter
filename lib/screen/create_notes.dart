import 'package:flutter/material.dart';
import 'package:noted_flutter/models/note_models.dart';

class createnotes extends StatefulWidget {
  const createnotes({super.key, required this.onNoteCreated});
  final Function(Note) onNoteCreated;

  @override
  State<createnotes> createState() => _createnotesState();
}

class _createnotesState extends State<createnotes> {
  final titleControler = TextEditingController();
  final bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(child: const Text("New Note")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titleControler,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(hintText: "Title",border: InputBorder.none),

            ),
            SizedBox(height: 18,),

            TextField(
              controller: bodyController,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(hintText: "Your Story",border: InputBorder.none),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(titleControler.text.isEmpty){
            return;
          }
          if(bodyController.text.isEmpty){
            return;
          }
          final note = Note(
              title: titleControler.text,
              body: bodyController.text
          );
          widget.onNoteCreated(note);
          Navigator.of(context).pop();
        },
        child: Icon(Icons.save),
      ),
    );
  }
}