import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_builder/screen/user_registration_2.dart';

class User_Registration_1 extends  StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<User_Registration_1> {

  @override
  Widget build(BuildContext context) {

  return Scaffold(
     /* appBar: AppBar(
        title: Text('Welcome'),
      ),
*/
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10.0),


        child: Center(
    child:Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(left: 10,
                top: 70,
                right: 10,
                bottom: 2,),

              child: Text('2 of 4', style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left: 10,
                top: 20,
                right: 10,
                bottom: 2,),

              child:  Image.asset('images/welcome.png'),


            ),
            SizedBox(
              height: 20,
            ),

            Column(
              children: <Widget>[
                Text('Welcome Sarang', style: TextStyle(
                  fontSize: 24,
                  color: Colors.green,
                  fontWeight: FontWeight.bold, fontFamily: 'Rubik',),
                   ),
                SizedBox(
                  height: 10,
                ),
                Text('We\'re super excited to have you on board!', style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlueAccent,

                  fontWeight: FontWeight.normal, fontFamily: 'Rubik',),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
               RaisedButton(

                   padding: EdgeInsets.all(15.0),
                  child: new Text(
                      "Let's get started",
                      style: new TextStyle(
                        color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold

                      )
                  ),
                  colorBrightness: Brightness.dark,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => User_Registration_2()),
                    ); // _loginAttempt(context);
                  },
                  color: Colors.green,
                ),
              ],
            )
    ],
    ),
      ),
      ),
    );
  }


}