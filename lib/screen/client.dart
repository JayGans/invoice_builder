import 'package:contact_picker/contact_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Client extends StatefulWidget {
  State createState() => new _MainWidgetState();

}
  class _MainWidgetState extends State<Client> {
    final ContactPicker _contactPicker = new ContactPicker();
    Contact _contact;

  @override
  Widget build(BuildContext context) =>
  new Scaffold(
  body: new Column(
  children: <Widget>[
  new Text(
  _contact == null ? 'No contact selected.' : _contact.toString(),
  ),

  ],
  ),
  floatingActionButton: new FloatingActionButton(
  elevation: 0.0,
  child: new Icon(Icons.add),
  // backgroundColor: new Color(0xFFE57373),
  onPressed: () async {
  Contact contact = await _contactPicker.selectContact();
 setState(() {
  _contact = contact;
  });
  },
  )
  );


  Widget add() {
    return new Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

}