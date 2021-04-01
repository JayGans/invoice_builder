
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:invoice_builder/DataList/Pref_List.dart';
import 'package:invoice_builder/adapter/Pref_Card.dart';
import 'package:invoice_builder/model/pref_data.dart';
import 'package:invoice_builder/screen/login.dart';
import 'package:invoice_builder/screen/user_registration_1.dart';

class User_Registration_3 extends  StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<User_Registration_3> {

  bool _obscureText = true;
  String nocust='1 - 5';
  List<String> custlist = ['1 - 5','6 - 10','10 - 20','20 - 50','50 - 100','100 - 500','500 - 2500','2500 - 5000','5000 and above'];
  String _selectedCountryCode='Accountancy firm';
  String noemp='1 - 5';
  List<String> empnilist = ['1 - 5','6 - 10','10 - 20','20 - 50','50 - 100','Above 100'];
  List<String> industrilist = ['Accountancy firm','Agency or sales house','Agriculture',
    'Art and design',
    'Automobiles',
    'Banking',
    'Cable operator',
    'Chartered Accountants',
    'Construction',
    'Consultancy firm',
    'Consumer markets',
    'Consumer packaged goods',
    'Distributor',
    'E-commerce seller',
    'Education and training',
    'Engineering',
    'Event management',
    'Financial services',
    'Food industry',
    'Gaming',
    'Gems and jewellery',
    'Government',
    'Health &amp; fitness',
    'Healthcare',
    'Home Baker',
    'Hospitality Hotels and Home Stays',
    'Housing society',
    'ISP Internet Service Provider',
    'Infrastructure',
    'Insurance',
    'Interior design',
    'IT &amp; ITES',
    'Legal',
    'Manufacturing',
    'Marketing',
    'Media and entertainment',
    'Non - Profit',
    'Other',
    'Pharmaceuticals',
    'Publishing and web media',
    'Real estate',
    'Research and development',
    'Retail outlet',
    'Science and technology',
    'Sports &amp; Outdoors Sport training',
    'Travel and tourism (Hospitality)',
    'Web designing',
    'Web development',
    'Writers'];
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

            child: Text('4 of 4', style: TextStyle(
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

            child:  Image.asset('images/pick-industry.png', height: 140,
                width: 140),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 10,
              top: 10,
              right: 10,
              bottom: 2,),

            child: Text('Customize your account', style: TextStyle(
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

            child: Text('Your account will be setup as per your industry and organization size',textAlign: TextAlign.center, style: TextStyle(
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
                Row(
                 children: [
                Text('Industry',style: TextStyle(fontSize: 14,

                    fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

                  ),
                 ],
                ),
                SizedBox(
                  height: 3,
                ),
    Container(
      width: MediaQuery.of(context).size.width * 2,
    //padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
    border: Border.all(
    color: Colors.grey,
    width: 1,
    ),
    ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            value: _selectedCountryCode,
            items: industrilist.map((String value) {
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
    ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Number of employees',style: TextStyle(fontSize: 14,

                      fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 2,
                  //padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        value: noemp,
                        items: empnilist.map((String value) {
                          return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(fontSize: 14.0),
                              ));
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            noemp = value;
                          });
                        },
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Number of customers',style: TextStyle(fontSize: 14,

                      fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 2,
                  //padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        value: nocust,
                        items: custlist.map((String value) {
                          return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(fontSize: 14.0),
                              ));
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            nocust = value;
                          });
                        },
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                  ),
                ),


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
                      "Complete Setup",
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      )
                  ),
                  colorBrightness: Brightness.dark,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
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