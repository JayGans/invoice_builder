import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice_builder/screen/user_registration.dart';
import 'package:invoice_builder/screen/user_registration_1.dart';

import 'bottom_navigation.dart';

class Login extends  StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {

  bool _obscureText = true;
  String _selectedCountryCode='IN';
  List<String> _countryCodes = ['IN', 'US','EU'];
  String _password;
  TextEditingController name;
  GlobalKey<FormState> _key = new GlobalKey();
  TextEditingController _pnoIdController = TextEditingController();
  TextEditingController _passIdController = TextEditingController();
  bool _validate = false;
  bool _autoValidate= false;

  var countryDropDown;
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    name = TextEditingController();

  }
  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

     countryDropDown = Container(
      decoration: new BoxDecoration(

        border: Border(
          right: BorderSide(width: 0.5, color: Colors.grey),
        ),
      ),
      height: 45.0,
      margin: const EdgeInsets.all(3.0),
      //width: 300.0,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            value: _selectedCountryCode,
            items: _countryCodes.map((String value) {
              return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    style: TextStyle(fontSize: 14.0),
                  ));
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCountryCode = value;
              });
            },
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );


    return Scaffold(
      /*appBar: AppBar(
        title: Text('Sign up'),
      ),*/

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10.0),


        child: Center(
          child: new Form(
            key: _key,
            autovalidate: _validate,
            child: _getFormUI(),
          ),

        ),

      ),

    );
  }

  Widget _getFormUI() {
    return new Column(
      children: <Widget>[
       /* new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 70,
            right: 10,
            bottom: 2,),

          child: Text('1 of 4', style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

          ),
        ),*/
        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 70,
            right: 10,
            bottom: 2,),

          child:  Image.asset('images/company-profile.png', height: 140,
              width: 140),
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 10,
            right: 10,
            bottom: 2,),

          child: Text('Sign in', style: TextStyle(
            fontSize: 20,
          //  color: Colors.black,
            fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 0,
            right: 10,
            bottom: 2,),

          child: Text('Start your business.', style: TextStyle(
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
   TextFormField(

                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter register phone number';
                  }
                },
      autovalidate: _autoValidate,
      controller: _pnoIdController,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.all(12.0),


                   // floatingLabelBehavior: FloatingLabelBehavior.always,
                    errorStyle: TextStyle(
                        color: Colors.red
                    ),
                    border: new OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xFFE0E0E0), width: 1)),
                    /*focusedBorder: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1),
                    ),*/

                    fillColor: Colors.white,

                    prefixIcon: countryDropDown,
                   // suffixStyle: const TextStyle(color: Colors.green),
                    hintText: 'Phone Number',
                    labelText: 'Phone Number'
                    ),

              ),

              SizedBox(
                height: 10,
              ),
              TextFormField(
                //controller: pass,
                autovalidate: _autoValidate,
                controller: _passIdController,
                decoration: InputDecoration(
                    labelText: "Password",

                    labelStyle: TextStyle(
                       // color: Colors.black
                    ),
                    errorStyle: TextStyle(
                      //  color: Colors.red
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
                validator: (val) => val.isEmpty ? 'Enter Password.' : null,
                onSaved: (val) => _password = val,
                obscureText: _obscureText,
              )
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
                    "Login",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    )
                ),
                colorBrightness: Brightness.dark,
                onPressed: () {
                  onButtonPressed(context);
                },
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  child: Text("New to Swipez?",style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontFamily: 'Rubik')),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => User_Registration()),
                    );
                  },

                ),
                MaterialButton(
                  child: Text("Forgot password?",style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                      fontFamily: 'Rubik')),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => User_Registration()),
                    );
                  },

                )
              ],
            )

          ],
        ),
      ]
    );
  }
  onButtonPressed(BuildContext context) {
    setState(() {
      _autoValidate= true;
    });
    if (_key.currentState.validate()) {
      setState(() {
        // validDataFilled = !validDataFilled;
       Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      });
    }
  }
}