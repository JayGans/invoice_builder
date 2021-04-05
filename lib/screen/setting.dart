import 'package:flutter/cupertino.dart';

class Setting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new SingleChildScrollView(

      child: Stack(

        children: <Widget>[
          new Container(
            //decoration: BoxDecoration(color: Colors.white),

            child: new Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
/*

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: <Widget>[
                      FlatButton(
                          onPressed: () {
                            showAlertDialog(context);
                            // Fluttertoast.showToast(
                            //     msg: 'This is toast notification',
                            //     toastLength: Toast.LENGTH_SHORT,
                            //     gravity: ToastGravity.BOTTOM,
                            //     timeInSecForIos: 1,
                            //     backgroundColor: Colors.red,
                            //     textColor: Colors.yellow
                            // );
                            print("hie");
                          },
                          child: Text('This Month', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                            color: Color.fromARGB(255, 47, 200, 233),
                            decoration: TextDecoration.underline,
                          ),)),
                      FlatButton(
                          onPressed: () {

                          },
                          child: Text('Previous Month', style: TextStyle(
                            fontSize: 18, color: Colors.grey,
                            fontFamily: 'Rubik',
                          ),)),
                    ],
                  ),

                  Container(
                    height: 160.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 320,
                          padding: const EdgeInsets.all(5.0),
                          margin: EdgeInsets.only(left: 20, right: 20),
                          height: 160,
                          decoration: BoxDecoration(color: Color.fromARGB(
                              255, 47, 200, 233), borderRadius: BorderRadius
                              .all(Radius.circular(20.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Invoices Sent",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.black,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "244",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Rubik', color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Total Amount",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.black, fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "₹ 14,74,845.00",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.white, fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 320,
                          padding: const EdgeInsets.all(5.0),
                          margin: EdgeInsets.only(right: 20),
                          height: 160,
                          decoration: BoxDecoration(color: Color.fromARGB(
                              255, 47, 200, 233), borderRadius: BorderRadius
                              .all(Radius.circular(20.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Payments Received",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.black, fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "100",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Rubik', color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Amount Received",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.black, fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),

                                Text(
                                  "₹ 8,43,276.00",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.white, fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),


                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: <Widget>[
                      FlatButton(
                          onPressed: () {

                          },
                          child: Text('Sales Tracker', style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                            color: Color.fromARGB(255, 47, 200, 233),
                            decoration: TextDecoration.underline,
                          ),)),
                      FlatButton(
                        onPressed: () {

                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 5, // 60% of space => (6/(6 + 4))
                        child: Container(

                          // width: MediaQuery.of(context).size.width * 0.5,
                          padding: const EdgeInsets.all(5.0),

                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FEB 2020",
                                  style: TextStyle(
                                    fontSize: 16, color: Colors.grey ,fontFamily: 'Rubik',),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "₹ 8,43,276.00",
                                      style: TextStyle(
                                        fontSize: 16, fontFamily: 'Rubik',),
                                    ),
                                    */
/*Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Icon(Icons.arrow_forward_rounded,
                                        color: Colors.blue,
                                      ),
                                    ),*//*

                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                      FDottedLine(
                        color: Colors.white,
                        height: 60.0,
                      ),
                      Expanded(
                          flex: 5, // 60% of space => (6/(6 + 4))
                          child:
                          Container(
                            // width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.all(5.0),

                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "FEB 2020",
                                    style: TextStyle(
                                        fontSize: 16,  fontFamily: 'Rubik',color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  Row(
                                    children: [
                                      Text(
                                        "₹ 8,43,276.00",
                                        style: TextStyle(fontSize: 16,
                                          // color: Colors.black,
                                          fontWeight: FontWeight.bold, fontFamily: 'Rubik',),
                                      ),
                                      // Padding(
                                      //   padding: EdgeInsets.only(left: 20.0),
                                      //   child: Icon(Icons.arrow_forward,
                                      //     color: Colors.blue,
                                      //   ),
                                      // ),

                                    ],
                                  ),


                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CovidBarChart(covidCases: covidUSADailyNewCases),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Recent Transactions', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          color: Color.fromARGB(255, 47, 200, 233),
                          decoration: TextDecoration.underline,
                        )),
                      ),),

                    ],

                  ),



                  new  Column(

                    children: <Widget>[

                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:movies.length,

                          itemBuilder: (context,index){

                            return  Trans_Card(movie: movies[index]);
                          })
                    ],
                  ),

*/

                ],

              ),


            ),

          ),
        ],
      ),
    );
  }

  // showAlertDialog(BuildContext context) {
  //   // set up the button
  //   Widget okButton = FlatButton(
  //     child: Text("OK"),
  //     onPressed: () {},
  //   );
  //
  //   // set up the AlertDialog
  //   AlertDialog alert = AlertDialog(
  //     title: Text("My title"),
  //     content: Text("This is my message."),
  //     actions: [
  //       okButton,
  //     ],
  //   );
  //
  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }

}