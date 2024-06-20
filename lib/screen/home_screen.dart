import 'package:flutter/material.dart';
import 'package:noted_flutter/models/note_models.dart';
import 'package:noted_flutter/screen/create_notes.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Note> notes =List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Your Notes")),
        
      ),
      body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context,index){
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      notes[index].title,
                    )
                  ],
                ),
              ),
            );
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const createnotes()));
          
        },
        child: const Icon(Icons.add),
      ),

    );
  }
  void onNoteCreated(Note note){
    notes.add(note);
    setState(() {});
  }
  void onNoteDeleted(int index){
    notes.removeAt(index);
  }
}