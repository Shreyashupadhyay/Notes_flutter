import 'package:flutter/material.dart';

class createnotes extends StatefulWidget {
  const createnotes({super.key});

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
    );
  }
}