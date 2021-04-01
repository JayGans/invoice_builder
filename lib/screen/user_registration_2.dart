
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:invoice_builder/DataList/Pref_List.dart';
import 'package:invoice_builder/adapter/Pref_Card.dart';
import 'package:invoice_builder/model/pref_data.dart';
import 'package:invoice_builder/screen/user_registration_1.dart';
import 'package:invoice_builder/screen/user_registration_3.dart';

class User_Registration_2 extends  StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<User_Registration_2> {
  List<Pref_Data> movies = Pref_List.getMovies();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /*appBar: AppBar(
        title: Text('Sign up'),
      ),*/

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10.0),


        child: Center(

            child: _getFormUI(),


        ),

      ),

    );
  }

  Widget _getFormUI() {
    return new Column(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 70,
            right: 10,
            bottom: 2,),

          child: Text('3 of 4', style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

          ),
        ),

        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 10,
            right: 10,
            bottom: 2,),

          child: Text('How can Swipez help you?', style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 0,
            right: 10,
            bottom: 2,),

          child: Text('Get started by picking one or more of the tools that will make your life easier',textAlign: TextAlign.center, style: TextStyle(
            fontSize: 14,

            fontFamily: 'Rubik',)

          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              ListView.builder(

                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:movies.length,

                  itemBuilder: (context,index){

                    return  Pref_Card(movie: movies[index]);

                  })
            ]
        ),
        SizedBox(
          height: 30,
        ),

        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child:RaisedButton(
                padding: EdgeInsets.all(12.0),
                child: new Text(
                    "Save preferences",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    )
                ),
                colorBrightness: Brightness.dark,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Registration_3()),
                  ); // _loginAttempt(context);
                },
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ]
    );
  }
}
