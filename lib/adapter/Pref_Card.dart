import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:invoice_builder/model/pref_data.dart';


class Pref_Card extends StatelessWidget {
  final Pref_Data movie;

  Pref_Card({this.movie});
final bool status=false;

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
       /* print("click"+ movie.client_nm);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => InvoiceDetailPage()));*/
      },
      child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Card(

              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey, width: 0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ListTile(

                      title: Text(movie.name,

                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),
                      ),

                      subtitle:  Padding(padding: EdgeInsets.only(top: 7),child:Text(movie.desc),
                      ),
                      trailing: FlutterSwitch(
                        activeColor: Colors.lightBlueAccent,
                        width: 60,
                        height: 28,
                        inactiveColor: Colors.grey,
                        value: movie.status,
                        // onToggle: (val) {
                        //   setState(() {
                        //     status = val;
                        //   });
                        // },
                      ),

                      contentPadding: EdgeInsets.all(15.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

          ]
      ),
    );
  }
}