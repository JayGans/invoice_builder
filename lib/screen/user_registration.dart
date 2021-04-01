import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_builder/screen/user_registration_1.dart';

class User_Registration extends  StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<User_Registration> {

  bool _obscureText = true;
  String _selectedCountryCode='IN';
  List<String> _countryCodes = ['IN', 'US','EU'];
  String _password;
  TextEditingController name;
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  var countryDropDown;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {

     countryDropDown = Container(
      decoration: new BoxDecoration(
        color: Colors.white,
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
        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 70,
            right: 10,
            bottom: 2,),

          child: Text('1 of 4', style: TextStyle(
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

          child:  Image.asset('images/company-profile.png', height: 140,
              width: 140),
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 10,
            top: 10,
            right: 10,
            bottom: 2,),

          child: Text('Tell us about your business', style: TextStyle(
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

          child: Text('Setup your company information and account', style: TextStyle(
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
               // controller: name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Company Name",
                    hintText: 'Super Company Pvt Ltd',
                    labelStyle: TextStyle(
                        color: Colors.black
                    ),
                    errorStyle: TextStyle(
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
                validator: (value){
                  if(value == null || value == ''){
                    return "Enter Company name";
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
               // controller: name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: 'Rohit Jadhav',
                    labelStyle: TextStyle(
                        color: Colors.black
                    ),
                    errorStyle: TextStyle(
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
                validator: (value){
                  if(value == null || value == ''){
                    return "Enter Name";
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    contentPadding: const EdgeInsets.all(12.0),
                    border: new OutlineInputBorder(
                        borderSide:
                        new BorderSide(color: const Color(0xFFE0E0E0), width: 0.1)),
                    fillColor: Colors.white,
                    prefixIcon: countryDropDown,

                    hintText: 'Phone Number',
                    labelText: 'Phone Number'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                //controller: pass,

                decoration: InputDecoration(
                    labelText: "Password",

                    labelStyle: TextStyle(
                        color: Colors.black
                    ),
                    errorStyle: TextStyle(
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
                validator: (val) => val.length < 6 ? 'Password too short.' : null,
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
                    "Setup account",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    )
                ),
                colorBrightness: Brightness.dark,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Registration_1()),
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