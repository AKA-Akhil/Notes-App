import 'package:flutter/material.dart';
import 'package:notes_app/screens/note_list.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      
      home: NoteList(),
    );
  }
  
}