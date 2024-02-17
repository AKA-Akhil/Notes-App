import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  @override
  State<NoteDetail> createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetail> {
  static var _priorities = ['High', 'Low'];
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        Theme.of(context).textTheme.titleMedium ?? TextStyle();
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      appBar:AppBar(
        title: Text(
          'Edit Note',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                  items: _priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  style: textStyle,
                  value: 'Low',
                  onChanged: (valueSelectedByUser) {
                    setState(() {
                      debugPrint('User Selected $valueSelectedByUser');
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something in Title Text Field Changed');
                },
                decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something in Title Description Field Changed');
                },
                decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.purple.shade300,
                        ), // Set background color
                      ),
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize:
                              16, // You can adjust the font size as needed
                              color: Colors.white
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Save Button Clicked");
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 5.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.purple.shade300
                        ), // Set background color
                        // Set text color
                      ),
                      child: Text(
                        'Delete',
                        style: TextStyle(
                          fontSize:
                              16, // You can adjust the font size as needed
                              color: Colors.white
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Delete Button Clicked");
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
