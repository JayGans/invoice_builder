
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_builder/screen/user_registration.dart';

import 'login.dart';


class Start_Page extends  StatefulWidget {
@override
_DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<Start_Page> {

  var appBar = AppBar(
    title: Text("App"),
  );
  @override
  Widget build(BuildContext context) {
    var _pageSize = MediaQuery.of(context).size.height;
    var _notifySize = MediaQuery.of(context).padding.top;
    var _appBarSize = appBar.preferredSize.height;
    return Scaffold(
     /* appBar: AppBar(
        title: Text('Invoice Details'),
      ),*/

      body:  SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(10.0),


              child: Center(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(left: 10,
                            top: 100,
                            right: 10,
                            bottom: 2,),

                          child:  Image.asset('images/invoice.png', height: 70,
                              width: 100),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(left: 20,
                            top: 10,
                            right: 10,
                            bottom: 2,),

                          child: Text('Welcome to', style: TextStyle(
                            fontSize: 32,
color: Colors.black,
                            fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(left: 20,
                            top: 0,
                            right: 10,
                            bottom: 2,),

                          child: Text('Swipez Invoice.app', style: TextStyle(
                            fontSize: 32,
                            color: Colors.green,
                            fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(left: 20,
                            top: 0,
                            right: 10,
                            bottom: 2,),

                          child: Text('Create beautiful invoices, track your \ncompany\'s performance and more.', style: TextStyle(
                            fontSize: 16,

                            fontWeight: FontWeight.normal, fontFamily: 'Rubik',)

                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),

               Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                     child:RaisedButton(
                       padding: EdgeInsets.all(12.0),
                      child: new Text(
                          "Sign in",
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
                        );
                      },
                      color: Colors.green,
                    ),
                    ),


                        MaterialButton(
                        child: Text("Create account",style: TextStyle(
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
                ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),

            ),

    );
  }


}