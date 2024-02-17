import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: getNotesListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB Clicked");
        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNotesListView() {
    TextStyle titleStyle =
        Theme.of(context).textTheme.titleMedium ?? TextStyle();

    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text(
                'Dummy',
                style: titleStyle,
              ),
              subtitle: Text('dummy date'),
              trailing: Icon(Icons.delete),
              onTap: () {
                debugPrint("tapped");
              },
            ),
          );
        });
  }
}
